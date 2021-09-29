import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TitleSliverPage extends StatefulWidget {
  final String url, title;
  final Widget child;
  final Color? backgroundColor;
  final ScrollController? controller;
  final Widget? leading;
  const TitleSliverPage({Key? key,required this.url, this.title: "",required this.child, this.backgroundColor, this.controller, this.leading}) : super(key: key);

  @override
  _TitleSliverPageState createState() => _TitleSliverPageState();
}

class _TitleSliverPageState extends State<TitleSliverPage> {
  late ScrollController controller;

  double offset = 0;
  late double maximum;

  @override
  void initState() {
    maximum = size.height * 0.37 - 50;
    controller = widget.controller??ScrollController();
    controller.addListener(() {
      setState(() {
        offset = controller.offset;
        if(offset>maximum)
          offset = maximum;
      });
    });
    super.initState();
  }
  double get _horizontalTitlePadding {
    const kBasePadding = 15.0;
    const kMultiplier = 0.5;
    final _scrollController = controller;
    final kExpandedHeight = maximum + 50;

    if (_scrollController.hasClients) {
      if (_scrollController.offset < (kExpandedHeight / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (_scrollController.offset > (kExpandedHeight - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (kExpandedHeight / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      return (_scrollController.offset - (kExpandedHeight / 2)) * kMultiplier +
          kBasePadding;
    }

    return kBasePadding;
  }
  @override
  Widget build(BuildContext context) {
    final fontSize = size.height/35 - offset/35;
    return Stack(
      children: [
        SizedBox(
            height: size.height*0.5,
            width: size.width,
            child: CachedNetworkImage(imageUrl: widget.url, fit: BoxFit.cover,)
        ),
        CustomScrollView(
          controller: controller,
          physics: ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              leading: widget.leading,
              backgroundColor: Colors.transparent,
              expandedHeight: maximum + 50,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(widget.title, style: AppTextStyles.white57w700.copyWith(fontSize:fontSize),),
                centerTitle: false,
                titlePadding:offset == maximum ? null : EdgeInsets.only(
                    left: _horizontalTitlePadding, bottom: size.h1 * 10),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                        (context, i){
                      return DecoratedBox(
                        decoration: BoxDecoration(
                            color: widget.backgroundColor??AppColors.darkWhite,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10))
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: size.w1 * 24),
                          child: widget.child,
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
