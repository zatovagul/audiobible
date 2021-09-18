
import 'package:bloc_skeleton/common/di/bloc/base_bloc.dart';
import 'package:bloc_skeleton/common/di/bloc/base_state.dart';
import 'package:bloc_skeleton/common/di/bloc/common_state.dart';
import 'package:bloc_skeleton/common/util/logger.dart';
import 'package:bloc_skeleton/data/constants/app_strings.dart';
import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/data/service/database/data_parser.dart';
import 'package:bloc_skeleton/data/util/storage_util.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/string_formats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:provider/provider.dart';

part 'home_screen_bloc.freezed.dart';

@freezed
abstract class HomeEvent with _$HomeEvent{
  const HomeEvent._();
  const factory HomeEvent.changePage(int page) = _ChangePage;
  const factory HomeEvent.changeReader(Reader reader) = _ChangeReader;
  const factory HomeEvent.openChapter(Chapter chapter, Book book) = _OpenChapter;
  const factory HomeEvent.updateChapter(Chapter chapter) = _UpdateChapter;

  const factory HomeEvent.playReader(Reader reader) = _PlayReader;
}

@freezed
abstract class HomeState with _$HomeState implements BaseState{
  const HomeState._();
  const factory HomeState.pageChanged(int page) = PageChanged;
  const factory HomeState.readerChanged(Reader reader) = ReaderChanged;
  const factory HomeState.chapterOpened(PlayerInfo playerInfo) = ChepterOpened;

  const factory HomeState.readerPlayed(Reader reader) = ReaderPlayed;
}

class HomeScreenBloc extends Bloc<HomeEvent, BaseState> with BaseBloc{
  int page = 0;
  late ReaderDao _readerDao;
  late Future<List<Reader>> readers;
  late List<Reader> readersList;
  late int? readerId;

  late ChapterDao _chapterDao;
  Stream<List<Chapter>>? chaptersStream;

  late PlayerInfo playerInfo;
  late AudioPlayer player;

  Reader? reader;

  HomeScreenBloc(BuildContext context) : super(CommonState.init()){
    playerInfo = PlayerInfo();
    player = AudioPlayer();

    _chapterDao = Provider.of<ChapterDao>(context, listen: false);

    _readerDao = Provider.of<ReaderDao>(context, listen: false);
    readers = _readerDao.getAllReaders();
    getData();
  }

  getData()async{
    readerId = StorageUtil.getReader();
    readersList = await readers;
    if(readerId==null){
      readerId = readersList.first.id;
    }
    player.positionStream.listen((event) {
      ///Reader check add NEED TODO
      if(player.playing){
        final chapter = playerInfo.chapter;
        final num = player.position.inMilliseconds/(player.duration?.inMilliseconds??1);
        if(player.duration?.inMilliseconds != 0)
          _updateC(chapter!.copyWith(percentage: num));
        if(player.duration!=null)
          if((player.duration!.inMilliseconds-player.position.inMilliseconds).abs()<=500 && player.duration!.inMilliseconds>0)
            if(playerInfo.next!=null) {
              this.add(HomeEvent.openChapter(playerInfo.next!, playerInfo.book!));
        }
      }
    });


    final chapterId = StorageUtil.getChapter()??1;
    playerInfo = await _chapterDao.findChapterWithBookById(chapterId);
    chaptersStream = _chapterDao.watchChaptersByBookId(playerInfo.book!.id);
    await checkChapters(playerInfo.chapter!, playerInfo.book!);
    loadUrl(false);
  }

  @override
  Stream<BaseState> mapEventToState(HomeEvent event) {
    return event.when(
        changePage: _changePage,
        changeReader: _changeReader,
        openChapter: _openChapter,
        updateChapter: _updateChapter,
        playReader: _playReader
    );
  }

  Stream<BaseState> _changePage(int page)async*{
    this.page = page;
    yield HomeState.pageChanged(page);
    yield CommonState.init();
  }

  Stream<BaseState> _changeReader(Reader reader)async*{
    await StorageUtil.setReader(reader.id);
    this.readerId = reader.id;
    yield HomeState.readerChanged(reader);
    yield CommonState.init();
    loadUrl(false);
  }

  Stream<BaseState> _openChapter(Chapter chapter, Book book)async*{
    yield* _changePage(1);
    playerInfo..chapter = chapter..book = book;
    chaptersStream = _chapterDao.watchChaptersByBookId(book.id);
    loadUrl();
    yield HomeState.chapterOpened(playerInfo);
    StorageUtil.setChapter(chapter.id);
  }

  Future checkChapters(Chapter chapter, Book book)async{
    final chapters = await _chapterDao.getChaptersByBookId(book.id);
    final nextChapters = chapters.where((e) => e.chapterNum>chapter.chapterNum);
    final prevChapters = chapters.where((e) => e.chapterNum<chapter.chapterNum);
    playerInfo..next = nextChapters.length>0 ? nextChapters.first : null;
    playerInfo..previous = prevChapters.length>0 ? prevChapters.last : null;
    
    // player.setAudioSource(
    //     ConcatenatingAudioSource(
    //      useLazyPreparation: true,
    //       children: [
    //         ...chapters.map((e)
    //         {
    //           String url = AppStrings.url;
    //           final nameId = _getReader().nameId;
    //           String bookNum = book.bookNumber.toString();if(bookNum.length==1) bookNum = "0$bookNum";
    //           String chapterNum = e.chapterNum.toString();if(chapterNum.length==1) chapterNum = "0$chapterNum";
    //           url = "$url/$nameId/$bookNum/$chapterNum.mp3";
    //           return AudioSource.uri(Uri.parse(url),
    //               tag: MediaItem(
    //                 id: "${chapter.id}",
    //                 title: "${chapter.chapterNum} глава",
    //                 album: book.name,
    //                 artist: book.name,
    //                 // artUri: Uri.parse("https://www.pexels.com/photo/woman-leaning-back-on-tree-trunk-using-black-dslr-camera-during-day-610293/")
    //               ));
    //         })
    //       ],
    // ));
  }

  loadUrl([bool play = true])async{
    final chapter = playerInfo.chapter!;
    final book = playerInfo.book!;

    String url = AppStrings.url;
    final nameId = _getReader().nameId;
    String bookNum = book.bookNumber.toString();if(bookNum.length==1) bookNum = "0$bookNum";
    String chapterNum = chapter.chapterNum.toString();if(chapterNum.length==1) chapterNum = "0$chapterNum";
    url = "$url/$nameId/$bookNum/$chapterNum.mp3";
    await player.pause();
    await checkChapters(chapter, book);
    await player.setAudioSource(
        AudioSource.uri(Uri.parse(url),
          tag: MediaItem(
            id: "${chapter.id}",
            title: "${chapter.chapterNum} глава",
              album: book.name,
            artist: book.name,
            // artUri: Uri.parse("https://www.pexels.com/photo/woman-leaning-back-on-tree-trunk-using-black-dslr-camera-during-day-610293/")
          )
        )
    );
    final a = await player.load();
    logger.i("${playerInfo.chapter!.percentage}    $a");
    if(playerInfo.chapter!.percentage<0.99)
      player.seek((a??Duration())*playerInfo.chapter!.percentage);
    if(play)
      await player.play();
  }

  Stream<BaseState> _updateChapter(Chapter e)async*{
    _updateC(e);
  }
  _updateC(Chapter e)async{
    await _chapterDao.updateChapter(e);
  }

  Reader _getReader(){
    return readersList.where((element) => element.id==readerId).first;
  }

  Stream<BaseState> _playReader(Reader reader)async*{
   try{
     this.reader = reader;
     String url = AppStrings.url;
     url = "$url/${reader.nameId}/01/01.mp3";
     if(player.playing) player.pause();
     print(url);
         ()async{
        await player.setAudioSource(AudioSource.uri(Uri.parse(url),
            tag: MediaItem(
              id: "1111${reader.id}",
              title: "1 глава",
              album: reader.name,
              artist: reader.name,
            )));
        await player.load();
        await player.play();
      }();
      yield HomeState.readerPlayed(reader);
     yield CommonState.init();
   }
   catch(err, st){
     this.mapErrorToState(err as Exception, st);
   }
  }

  dispose(){
    player.dispose();
  }
}

class PlayerInfo{
  Chapter? chapter, next, previous;
  Book? book;
  PlayerInfo({this.chapter, this.book, this.next, this.previous});
}