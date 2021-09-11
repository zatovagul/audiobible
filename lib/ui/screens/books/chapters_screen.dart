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


class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({Key? key}) : super(key: key);

  @override
  State<ChaptersScreen> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {

  late final HomeScreenBloc homeBloc;
  @override
  void initState() {
    homeBloc = context.read<HomeScreenBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TitleSliverPage(url: AppImages.background,title: "Книга", child: Wrap(
      direction: Axis.horizontal,
      runSpacing: size.w1 * 20,
      children: [
        for(int i = 0; i < 40; i++)
          ChapterListItem(num: i+1, percentage: 0+i/20,onPressed: (){
            homeBloc.add(HomeEvent.changePage(1));
          },)
      ],
    ),);
  }

  AppSizes get size => AppNavigation.size;
}
