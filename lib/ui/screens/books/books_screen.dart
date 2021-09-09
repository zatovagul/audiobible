import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: AppNavigation.size.height/2,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Stack(
              children: [
                Positioned(
                  top: 0, bottom: 0,left: 0, right: 0,
                    child: Image.asset(AppImages.background, fit: BoxFit.cover,)),
                Padding(padding: EdgeInsets.only(top: AppNavigation.size.padding.top),
                  child: Column(
                    children: [

                    ],
                  ),
                ),
                Positioned(
                  bottom: 0, left: 0, right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    height: AppNavigation.size.w1 * 20,
                  ),
                )
              ],
            ),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, i){
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(height: 2000,),
              ],
            ),
          );
        }))
      ],
    );
  }
}
