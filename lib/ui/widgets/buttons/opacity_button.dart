import 'package:flutter/material.dart';

class OpacityButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  const OpacityButton({Key? key,required this.child,required this.onPressed}) : super(key: key);

  @override
  _OpacityButtonState createState() => _OpacityButtonState();
}

class _OpacityButtonState extends State<OpacityButton> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      // onTap: widget.onPressed,
      onTapDown: (v){
        setPressed(true);
        widget.onPressed();
        Future.delayed(Duration(milliseconds: 200),()=>setPressed(false));
      },
      // onTapUp: (v)=>setState(()=>pressed=false),
      // onTapCancel: ()=>setState(()=>pressed=false),
      child: Opacity(
          opacity: pressed ? 0.5 : 1,
          child: widget.child
      ),
    );
  }
  setPressed(bool a)=>setState(()=>pressed=a);
}
