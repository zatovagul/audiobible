import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen_bloc.dart';
import 'package:bloc_skeleton/ui/widgets/buttons/opacity_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/src/provider.dart';

class PlayerWidget extends StatelessWidget {
  final String bookName;
  final Chapter? chapter;
  final AudioPlayer player;
  final Chapter? previous, next;
  const PlayerWidget(
      {Key? key, this.bookName: "", this.chapter, required this.player, this.previous, this.next})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Duration>(
        stream: player.positionStream,
        builder: (context, position) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: chapter == null
                ? []
                : [
                    SizedBox(
                      height: size.w1 * 20,
                    ),
                    Text(
                      "${chapter!.chapterNum} глава",
                      style: AppTextStyles.dark28w700,
                    ),
                    SizedBox(
                      height: size.w1 * 4,
                    ),
                    Text(
                      bookName,
                      style: AppTextStyles.dark18,
                    ),
                    Container(
                      height: size.w1 * 28,
                    ),
                    Text("${position.data}"),
                    Container(
                      height: size.w1,
                      width: double.infinity,
                      color: AppColors.dark,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    Container(
                      height: size.w1 * 38,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.w1 * 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OpacityButton(
                              child: SvgPicture.asset(
                                AppImages.skipBack,
                                width: size.w1 * 38,
                              ),
                              onPressed: () {if(previous!=null)_playChapter(context, previous!);}),
                          OpacityButton(
                              child: SvgPicture.asset(
                                AppImages.secBack,
                                width: size.w1 * 38,
                              ),
                              onPressed: () {player.seek(Duration(milliseconds: player.position.inMilliseconds - 30000));}),
                          StreamBuilder<PlayerState>(
                              stream: player.playerStateStream,
                              builder: (context, playerSnapshot) {
                                return OpacityButton(
                                    child: player.playing
                                        ? Container(
                                            decoration: BoxDecoration(color: AppColors.brown,borderRadius: BorderRadius.circular(90)),
                                            width: size.w1 * 72,
                                            height: size.w1 * 72,
                                            child: Center(child: SvgPicture.asset(AppImages.pauseIcon,height: size.w1 * 28,))
                                          )
                                        : SvgPicture.asset(
                                            AppImages.playIcon,
                                            width: size.w1 * 72,
                                            height: size.w1 * 72,
                                          ),
                                    onPressed: () {
                                      player.playing
                                          ? player.pause()
                                          : player.play();
                                    });
                              }),
                          OpacityButton(
                              child: SvgPicture.asset(
                                AppImages.secNext,
                                width: size.w1 * 38,
                              ),
                              onPressed: () {player.seek(Duration(milliseconds: player.position.inMilliseconds + 30000));}),
                          OpacityButton(
                              child: SvgPicture.asset(
                                AppImages.skipNext,
                                width: size.w1 * 38,
                              ),
                              onPressed: () {if(next!=null)_playChapter(context, next!);}),
                        ],
                      ),
                    )
                  ],
          );
        });
  }

  _playChapter(BuildContext context, Chapter chapter){
    final bloc = context.read<HomeScreenBloc>();
    bloc.add(HomeEvent.openChapter(chapter, bloc.playerInfo.book!));
  }

  AppSizes get size => AppNavigation.size;
}
