import 'package:flutter/material.dart';

import '../en_fency_container.dart';

class profileContainerWidget extends StatelessWidget {
  const profileContainerWidget({
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
        border: Border.all(color: widget.borderColor ?? Colors.black)
      ),
      child: Row(
        children: [
          Image.network(widget.profileImgUrl ?? 'https://as1.ftcdn.net/v2/jpg/03/46/83/96/1000_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg', width: 100, height: 100,),
          Column(
            children: [
              Text("${widget.userName}", 
                style: TextStyle(
                    color: widget.textColor, 
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,),
                maxLines: 2,
                textAlign: TextAlign.center,),
              Text("${widget.userEmail}", 
                style: TextStyle(
                    color: widget.textColor, 
                    fontSize: 14, 
                    fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,),
              Text("${widget.userPhoneNo}", 
                style: TextStyle(
                    color: widget.textColor, 
                    fontSize: 14, 
                    fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,),
            ],
          ),
        ],
      ),
    );
  }
}
