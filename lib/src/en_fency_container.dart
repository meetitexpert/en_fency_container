// ignore_for_file: prefer_const_constructors, camel_case_types, unused_element, dead_code

import 'package:en_fency_container/src/imageBackgroud_container_widget.dart';
import 'package:en_fency_container/src/profile_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:en_fency_container/src/gradiant_container_widget.dart';

enum containerType {
    gradient,
    imageBackground,
    profile,
}

class en_fency_container extends StatefulWidget {
  const en_fency_container({Key? key, this.width, this.height, this.title, this.subTitle, this.color1, this.color2, this.textColor, this.type, this.imageUrl, this.borderColor, this.profileImgUrl, this.userEmail, this.userName, this.userPhoneNo}) : super(key: key);
  final double? width;
  final double? height;
  final String? title;
  final String? subTitle;
  final Color? color1;
  final Color? color2;
  final Color? textColor;
  final containerType? type;
  final String? imageUrl;
  final Color? borderColor;
  final String? profileImgUrl;
  final String? userName;
  final String? userEmail;
  final String? userPhoneNo;

  @override
  State<en_fency_container> createState() => _en_fency_containerState();
}

class _en_fency_containerState extends State<en_fency_container> {
  @override
  Widget build(BuildContext context) {
    return container();
  }

  Widget container(){
        if (widget.type == containerType.gradient){
            return GradiantContainerWidget(widget: widget);
        }else if (widget.type == containerType.imageBackground){
            return imageBackgroudContainerWidget(widget: widget);
        }else if (widget.type == containerType.profile){
            return profileContainerWidget(widget: widget);
        }

        return container();

    }
}

