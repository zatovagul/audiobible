import 'package:bloc_skeleton/common/di/bloc/base_state.dart';
import 'package:bloc_skeleton/data/constants/app_strings.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/screens/books/books_main_screen.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>HomeScreenBloc(),
      child: _HomeScreen(),
    );
  }
}


class _HomeScreen extends StatefulWidget {
  const _HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreen> {
  Stream<Duration?>? time;
  late List<Widget> pages;
  late PageController pageController;

  late final HomeScreenBloc bloc;
  @override
  void initState() {
    bloc = context.read<HomeScreenBloc>();

    pageController = PageController();
    pages = [];
    pages.add(BooksMainScreen());
    pages.add(Container(color: Colors.black,));
    pages.add(Container(color: Colors.red));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeScreenBloc, BaseState>(
      listener: (context, state){
        if(state is PageChanged){
          pageController.animateToPage(state.page, duration: Duration(milliseconds: 100), curve: Curves.easeIn);
        }
      },
      child: BlocBuilder<HomeScreenBloc, BaseState>(
          builder: (context, state){
        return Scaffold(
          body: PageView(
            controller: pageController,
            children: pages,
            onPageChanged: (i){
              setState(() {
                bloc.page = i;
              });
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: AppTextStyles.dark13,
            unselectedLabelStyle: AppTextStyles.dark13,
            selectedItemColor: AppColors.dark,
            unselectedItemColor: AppColors.dark.withOpacity(0.5),
            items: [
              BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.home_bar, color: AppColors.dark.withOpacity(bloc.page==0?1:0.5),), label: AppStrings.home_bar),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.play_bar, color: AppColors.dark.withOpacity(bloc.page==1?1:0.5)), label: AppStrings.play_bar),
              BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.readers_bar, color: AppColors.dark.withOpacity(bloc.page==2?1:0.5)), label: AppStrings.readers_bar),
            ],
            currentIndex: bloc.page,
            onTap: (i){
              bloc.add(HomeEvent.changePage(i));
            },
          ),
        );
      }),
    );
  }
}
