import 'package:bloc_skeleton/data/constants/app_strings.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/widgets/list_items/book_list_item.dart';
import 'package:bloc_skeleton/ui/widgets/popup/popup_menu_reader.dart';
import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: size.height/1.8,
            width: size.width,
            child: Image.asset(AppImages.background, fit: BoxFit.cover,)),
        CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: AppNavigation.size.height/2-size.h1*20,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Stack(
                  children: [
                    Positioned(
                      top: size.padding.top + (size.h1 * 40), bottom: 0, left: 0, right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text("${AppStrings.audio}\n${AppStrings.bible}",
                              style: AppTextStyles.white57w700.copyWith(fontSize: size.height/2/7.8),
                              textAlign: TextAlign.center,),
                          SizedBox(height: size.height/2/13.8,),
                          PopUpMenuReader(
                            height: size.height/2/7.3,
                            items: [
                              "Бондаренко",
                              "Козлов"
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: size.h1 * 24,
                      left: size.w1 * 20,
                      right: size.w1 * 20,
                      child: Row(
                        children: [
                          Expanded(child: _buildButton(AppStrings.old_testament, true, () { }),),
                          SizedBox(width: size.w1 * 20,),
                          Expanded(child: _buildButton(AppStrings.new_testament, false, () { }),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, i){
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.darkWhite,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10))
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.w1 * 24),
                  child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: size.w1 * 20,
                    children: [
                      for(int i = 0; i < 21; i++)
                        BookListItem(name: "Бытие", percentage: 0+i/20,)
                    ],
                  ),
                ),
              );
            },childCount: 1))
          ],
        ),
      ],
    );
  }

  Widget _buildButton(String text, bool checked, VoidCallback onPressed)=>Container(
    height: size.height/2/7,
    child: TextButton(
        onPressed: (){},
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Center(child: Text(text, style: (checked ? AppTextStyles.dark18w700 : AppTextStyles.white18w700).copyWith(fontSize: size.h1 * 18),))
    ),
    decoration: BoxDecoration(
      color: checked ? Colors.white : AppColors.dark,
      borderRadius: BorderRadius.circular(10)
    ),
  );

  AppSizes get size => AppNavigation.size;
}
