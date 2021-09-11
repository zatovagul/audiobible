import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/widgets/player/player_chapter_list_item.dart';
import 'package:bloc_skeleton/ui/widgets/player/player_widget.dart';
import 'package:bloc_skeleton/ui/widgets/slivers/title_sliver_page.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleSliverPage(url: AppImages.background,title: "Левит",
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlayerWidget(),
          SizedBox(height: size.w1 * 24,),
          Padding(
            padding: EdgeInsets.only(left: size.w1 * 16),
            child: Text("Далее:", style: AppTextStyles.dark20w700,),
          ),
          SizedBox(height: size.w1 * 8,),
          for(int i=0;i<10;i++)
            PlayerChapterListItem(),
          // Container(height: size.height/3,)
        ],
      )
    );
  }
}
