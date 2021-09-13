import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen_bloc.dart';
import 'package:bloc_skeleton/ui/widgets/list_items/book_list_item.dart';
import 'package:bloc_skeleton/ui/widgets/list_items/chapter_list_item.dart';
import 'package:bloc_skeleton/ui/widgets/slivers/title_sliver_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ChaptersArgs{
  final Book book;
  ChaptersArgs(this.book);
}

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ChaptersArgs;
    return _ChaptersScreen(book: args.book,);
  }
}

class _ChaptersScreen extends StatefulWidget {
  final Book book;
  const _ChaptersScreen({Key? key,required this.book}) : super(key: key);

  @override
  State<_ChaptersScreen> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<_ChaptersScreen> {

  late final HomeScreenBloc homeBloc;
  late final ChapterDao chapterDao;
  late Stream<List<Chapter>> chaptersStream;
  @override
  void initState() {
    homeBloc = context.read<HomeScreenBloc>();
    chapterDao = Provider.of<ChapterDao>(context, listen: false);
    chaptersStream = chapterDao.watchChaptersByBookId(widget.book.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TitleSliverPage(url: AppImages.background,title: widget.book.name,
      child: StreamBuilder<List<Chapter>>(
      stream: chaptersStream,
      builder: (context, snapshot) {
        return Wrap(
          direction: Axis.horizontal,
          runSpacing: size.w1 * 20,
          children: [
            ...snapshot.data?.map((e) => ChapterListItem(num: e.chapterNum, percentage: 0.3,onPressed: (){
              homeBloc.add(HomeEvent.openChapter(e, widget.book));
            },))??[],
          ],
        );
      }
    ),);
  }

  AppSizes get size => AppNavigation.size;
}
