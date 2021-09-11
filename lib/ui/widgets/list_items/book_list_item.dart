import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/screens/books/chapters_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookListItem extends StatelessWidget {
  final Book book;
  final double percentage;
  const BookListItem({Key? key,required this.book, this.percentage:0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [AppColors.beige,Colors.white], stops: [percentage,percentage]),
        borderRadius: bradius,
      ),
      margin: EdgeInsets.only(left: size.w1 * 20,),
      height: size.width/5,
      width: size.width/2-size.w1*30,
      child: TextButton(
        onPressed: (){
          AppNavigation.toChapters(ChaptersArgs(book));
        },
        style: TextButton.styleFrom(padding: EdgeInsets.only(left: size.w1 * 16, top: size.w1 * 16)),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(book.name, style: AppTextStyles.dark18w700.copyWith(fontSize: size.width/23)),
        ),
      ),
    );
  }
  AppSizes get size => AppNavigation.size;
  BorderRadius get bradius => BorderRadius.circular(10);
}
