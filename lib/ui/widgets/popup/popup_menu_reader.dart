import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:bloc_skeleton/ui/app_navigation.dart';
import 'package:bloc_skeleton/ui/constants/app_sizes.dart';
import 'package:bloc_skeleton/ui/constants/app_textstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUpMenuReader extends StatefulWidget {
  final double height;
  final List<Reader> items;
  final int index;
  final Function(Reader e) changeReader;
  const PopUpMenuReader({Key? key, this.height: 40,required this.items, this.index : 0,required this.changeReader}) : super(key: key);

  @override
  State<PopUpMenuReader> createState() => _PopUpMenuReaderState();
}

class _PopUpMenuReaderState extends State<PopUpMenuReader> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(width: size.w1, color: Colors.grey),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: EdgeInsets.all(size.h1 * 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Чтец: ${widget.items[widget.index].name}", style: AppTextStyles.white18w700.copyWith(fontSize: widget.height/3.5),),
                SizedBox(width: size.w1 * 8,),
                Icon(Icons.keyboard_arrow_down, color: Colors.white, size: size.w1 * 30,)
              ],
            ),
          ),
        ),
      ),
      itemBuilder: (context){
      return [
        ...widget.items.map((e) => PopupMenuItem(child: Container(width: size.width/2,
            child: Text(e.name)), value: widget.items.indexOf(e),
            onTap: ()=>widget.changeReader(e),
        )),

      ];
    },);
  }

  AppSizes get size => AppNavigation.size;
}
