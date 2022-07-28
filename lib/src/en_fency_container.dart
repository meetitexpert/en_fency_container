// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class en_fency_container extends StatefulWidget {
  const en_fency_container({Key? key, this.width, this.height, this.title, this.subTitle, this.color1, this.color2, this.textColor}) : super(key: key);
  final double? width;
  final double? height;
  final String? title;
  final String? subTitle;
  final Color? color1;
  final Color? color2;
  final Color? textColor;

  @override
  State<en_fency_container> createState() => _en_fency_containerState();
}

class _en_fency_containerState extends State<en_fency_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
      height: widget.height ?? 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [widget.color2??Color(0x00ffafbd), widget.color2??Color(0x00ffc3a0)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: Column(
        children: [
          Text("${widget.title}", 
            style: TextStyle(
                color: widget.textColor, 
                fontSize: 20, 
                fontWeight: FontWeight.bold,),
            maxLines: 2,
            textAlign: TextAlign.center,),
          Text("${widget.subTitle}", 
            style: TextStyle(
                color: widget.textColor, 
                fontSize: 14, 
                fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
