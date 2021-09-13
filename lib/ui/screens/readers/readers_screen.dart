import 'package:bloc_skeleton/common/di/bloc/base_state.dart';
import 'package:bloc_skeleton/data/constants/app_strings.dart';
import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/constants/app_colors.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:bloc_skeleton/ui/screens/home/home_screen_bloc.dart';
import 'package:bloc_skeleton/ui/widgets/list_items/reader_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReadersScreen extends StatelessWidget {
  const ReadersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, BaseState>(
      builder: (context, state) {
        final bloc = context.read<HomeScreenBloc>();
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
                FutureBuilder<List<Reader>>(
                  future: bloc.readers,
                  builder: (context, snapshot) {
                    return Column(
                      children: [
                        ...snapshot.data?.map((e) => ReaderItem(
                          reader: e,
                          chosen: e.id == bloc.readerId,
                          onPressed: (){
                            bloc.add(HomeEvent.changeReader(e));
                          },
                        ))??[],
                      ],
                    );
                  }
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
