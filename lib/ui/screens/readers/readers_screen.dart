import 'package:bloc_skeleton/data/constants/app_strings.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/widgets/list_items/reader_item.dart';
import 'package:flutter/material.dart';

class ReadersScreen extends StatelessWidget {
  const ReadersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: SafeArea(
        top: true,
        child: ListView(
          children: [
            Container(
              height: size.w1 * 100,
              margin: EdgeInsets.symmetric(horizontal: size.w1 * 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(AppStrings.choose_reader, style: AppTextStyles.dark28w700,),
              ),
            ),
            for(int i=0;i<4;i++)
              ReaderItem(chosen: i%2==0,)
          ],
        ),
      ),
    );
  }
}
