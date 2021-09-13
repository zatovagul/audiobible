import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

class PlayerChapterListItem extends StatelessWidget {
  final Chapter chapter;
  final VoidCallback? onPressed;
  const PlayerChapterListItem({Key? key,required this.chapter, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.w1 * 16),
      child: TextButton(
        onPressed: onPressed ?? (){},
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Column(
          children: [
            SizedBox(
              height: size.w1 * 56,
              child: Padding(
                padding: EdgeInsets.only(right: size.w1 * 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.play_arrow_rounded, color: AppColors.brown,size: size.w1 * 24,),
                        SizedBox(width: size.w1 * 20,),
                        Text("${chapter.chapterNum} глава", style: AppTextStyles.dark18w700,),
                      ],
                    ),
                    // Text("3:26", style: AppTextStyles.dark18w700.copyWith(color: AppColors.dark.withOpacity(0.5)),)
                  ],
                ),
              ),
            ),
            Divider(height: size.w1, color: AppColors.dark.withOpacity(0.3))
          ],
        ),
      ),
    );
  }
}
