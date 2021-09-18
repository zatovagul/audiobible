import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:bloc_skeleton/common/di/bloc/base_state.dart';
import 'package:bloc_skeleton/data/constants/app_strings.dart';
import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_images.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen_bloc.dart';
import 'package:bloc_skeleton/ui/widgets/buttons/opacity_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ReaderItem extends StatelessWidget {
  final bool chosen;
  final Reader reader;
  final VoidCallback? onPressed;
  const ReaderItem({Key? key, this.chosen : false,required this.reader, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, BaseState>(
      builder: (context, state) {
        final bloc = context.read<HomeScreenBloc>();
        final player = bloc.player;
        bool isPlay = bloc.reader?.id == reader.id;
        return Container(
          padding: EdgeInsets.all(size.w1 * 24),
          margin: EdgeInsets.only(bottom: size.w1 * 20, left: size.w1 * 20, right: size.w1 * 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(reader.name, style: AppTextStyles.dark24w700,),
              SizedBox(height: size.w1 * 16,),
              Text(reader.info, style: AppTextStyles.dark18P,),
              SizedBox(height: size.w1 * 24,),
              Text("Прослушать отрывок", style: AppTextStyles.dark18w700,),
              SizedBox(height: size.w1 * 16,),
              StreamBuilder<Duration>(
                stream: player.positionStream,
                builder: (context, snapshot) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap:(){
                            if(isPlay){
                                if(player.playing) player.pause();
                                else player.play();
                              }
                            else bloc.add(HomeEvent.playReader(reader));
                          },
                          child: Icon(!isPlay ? Icons.play_arrow_rounded : player.playing ? Icons.pause : Icons.play_arrow_rounded, color: AppColors.brown,size: size.w1 * 24,)
                      ),
                      SizedBox(width: size.w1 * 5,),
                      Expanded(
                        child: Container(
                          // color: CupertinoColors.systemPink,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: ProgressBar(
                              progress: !isPlay || player.duration==null ? Duration() : player.position,
                              total: !isPlay || player.duration==null ? Duration() : player.duration!,
                              buffered: !isPlay || player.duration==null ? Duration() : player.bufferedPosition,
                              timeLabelLocation: TimeLabelLocation.none,
                              thumbRadius: 0,
                              bufferedBarColor: AppColors.brown.withOpacity(0.4),
                              baseBarColor: AppColors.brown.withOpacity(0.2),
                              progressBarColor: AppColors.brown,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: size.w1 * 5,),
                      Text(!isPlay || player.duration==null ? "" : "${player.duration!.inMinutes}:${player.duration!.inSeconds%60<10?"0${player.duration!.inSeconds%60}":player.duration!.inSeconds%60}", style: AppTextStyles.dark18w700.copyWith(color: AppColors.dark.withOpacity(0.5), fontSize: size.w1 * 14),)
                    ],
                  );
                }
              ),
              SizedBox(height: size.w1 * 24,),
              OpacityButton(
                onPressed: onPressed??(){},
                child: Container(
                  height: size.w1 * 60,
                  padding: EdgeInsets.symmetric(horizontal: size.w1 * 24),
                  decoration: BoxDecoration(
                    color: chosen ? AppColors.lighBrown : AppColors.brown,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if(chosen)
                        ...[SvgPicture.asset(AppImages.checkBox),SizedBox(width: size.w1 * 8,)],
                      Text(chosen ? AppStrings.choosen_reader : AppStrings.choose_reader, style: AppTextStyles.dark18w700.copyWith(color: chosen ? AppColors.brown : Colors.white ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
