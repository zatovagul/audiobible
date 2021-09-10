import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/widgets/list_items/book_list_item.dart';
import 'package:flutter/material.dart';


class ChaptersScreen extends StatefulWidget {
  const ChaptersScreen({Key? key}) : super(key: key);

  @override
  State<ChaptersScreen> createState() => _ChaptersScreenState();
}

class _ChaptersScreenState extends State<ChaptersScreen> {
  late ScrollController controller;

  double offset = 0;


  @override
  void initState() {
    controller = ScrollController();
    controller.addListener(() {
      setState(() {
        offset = controller.offset;
        if(offset>size.height*0.37 - 50)
          offset = size.height*0.37 - 50;
        print(offset);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double appBarSize = size.height*0.37;
    return Stack(
      children: [
        SizedBox(
            height: size.height*0.5,
            width: size.width,
            child: Image.asset(AppImages.background, fit: BoxFit.cover,)),
        CustomScrollView(
          controller: controller,
          physics: ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              leading: Container(
                width: size.width / 11,
                height: size.width / 11,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(90),
                //   color: Colors.grey.withOpacity(0.3)
                // ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){Navigator.of(context).pop();},
                  icon: Center(child: Icon(Icons.arrow_back_ios)),
                ),
              ),
              backgroundColor: Colors.transparent,
              expandedHeight: appBarSize,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Левит", style: AppTextStyles.white57w700.copyWith(fontSize:size.height/18 - offset/10),),
                centerTitle: offset == appBarSize - 50,
                titlePadding:offset == appBarSize - 50 ? null : EdgeInsets.only(left: size.w1 * 20 + offset/2, bottom: size.h1 * 5),
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

  AppSizes get size => AppNavigation.size;
}
