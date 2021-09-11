import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/widgets/buttons/opacity_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size.w1 * 20,),
        Text("7 глава", style: AppTextStyles.dark28w700,),
        SizedBox(height: size.w1 * 4,),
        Text("Левит", style: AppTextStyles.dark18,),
        Container(height: size.w1 * 28,),
        Container(height: size.w1, width: double.infinity, color: AppColors.dark,margin: EdgeInsets.symmetric(horizontal: 20),),
        Container(height: size.w1 * 38,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.w1 * 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OpacityButton(child: SvgPicture.asset(AppImages.skipBack, width: size.w1 * 38,), onPressed: (){}),
              OpacityButton(child: SvgPicture.asset(AppImages.secBack, width: size.w1 * 38,), onPressed: (){}),
              OpacityButton(
                  child: SvgPicture.asset(AppImages.playIcon, width: size.w1 * 72,),
                  onPressed: (){}),
              OpacityButton(child: SvgPicture.asset(AppImages.secNext, width: size.w1 * 38,), onPressed: (){}),
              OpacityButton(child: SvgPicture.asset(AppImages.skipNext, width: size.w1 * 38,), onPressed: (){}),
            ],
          ),
        )
      ],
    );
  }

  AppSizes get size => AppNavigation.size;
}
