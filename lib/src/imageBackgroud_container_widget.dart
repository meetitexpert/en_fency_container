// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../en_fency_container.dart';

class imageBackgroudContainerWidget extends StatelessWidget {
  const imageBackgroudContainerWidget({
    Key? key,
    required this.widget,
    
  }) : super(key: key);

  final en_fency_container widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
      height: widget.height ?? 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
            Image.network(widget.imgeUrl ?? "https://picsum.photos/250?image=9"),
            Column(
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
        )],
      ),
    );
  }
}