import 'package:bloc_skeleton/data/constants/app_strings.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

import '../../app_navigation.dart';

class ChapterListItem extends StatelessWidget {
  final double percentage;
  final int num;
  final VoidCallback? onPressed;
  const ChapterListItem({Key? key, this.percentage:0, this.num: 1, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [AppColors.beige,Colors.white], stops: [percentage,percentage]),
        borderRadius: bradius,
      ),
      margin: EdgeInsets.only(left: size.w1 * 20,),
      height: size.width/6,
      width: size.width/3-size.w1*30,
      child: TextButton(
        onPressed: onPressed??(){},
        style: TextButton.styleFrom(padding: EdgeInsets.only(left: size.w1 * 16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity,),
            Text("$num", style: AppTextStyles.dark18w700),
            Text(AppStrings.chapter, style: AppTextStyles.dark13.copyWith(color: AppColors.dark.withOpacity(0.5)),),
          ],
        ),
      ),
    );
  }
  AppSizes get size => AppNavigation.size;
  BorderRadius get bradius => BorderRadius.circular(10);
}
