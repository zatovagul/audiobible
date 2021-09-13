import 'package:bloc_skeleton/common/di/bloc/base_state.dart';
import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen_bloc.dart';
import 'package:bloc_skeleton/ui/widgets/player/player_chapter_list_item.dart';
import 'package:bloc_skeleton/ui/widgets/player/player_widget.dart';
import 'package:bloc_skeleton/ui/widgets/slivers/title_sliver_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeScreenBloc, BaseState>(builder: (context, state) {
        final bloc = context.read<HomeScreenBloc>();
        final bookName = bloc.playerInfo.book?.name ?? "";
        final chapter = bloc.playerInfo.chapter;
        return StreamBuilder<List<Chapter>>(
          stream: bloc.chaptersStream,
          builder: (context, snapshot) {
            final chapters = snapshot.data;
            final nextChapters = snapshot.data?.where((e) => e.chapterNum>chapter!.chapterNum)??[];
            final prevChapters = snapshot.data?.where((e) => e.chapterNum<chapter!.chapterNum)??[];
            return TitleSliverPage(
                url: AppImages.background,
                title: bookName,
                backgroundColor: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlayerWidget(
                      next: nextChapters.length>0 ? nextChapters.first : null,
                      previous: prevChapters.length>0 ? prevChapters.last : null,
                      bookName: bookName,
                      chapter: chapter,
                      player: bloc.player,
                    ),
                    SizedBox(
                      height: size.w1 * 24,
                    ),
                    if (chapter != null) ...[
                      Padding(
                        padding: EdgeInsets.only(left: size.w1 * 16),
                        child: Text(
                          "Далее:",
                          style: AppTextStyles.dark20w700,
                        ),
                      ),
                      SizedBox(
                        height: size.w1 * 8,
                      ),
                      ...nextChapters.map((e) =>
                          PlayerChapterListItem(
                            chapter: e,
                            onPressed: (){
                              bloc.add(HomeEvent.openChapter(e, bloc.playerInfo.book!));
                            },
                          )),

                    ]
                  ],
                ));
          }
        );
      }),
    );
  }
}
