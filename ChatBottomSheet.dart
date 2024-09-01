import 'package:flutter/material.dart';

class ChatBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.blueGrey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(0, 3),
        ),
      ]),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
                Icons.add,
                color: Color(0xFF113953),
                size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
                Icons.emoji_emotions_sharp,
                color: Color(0xFF113953),
                size: 30,
            ),
          ),
          Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
           alignment: Alignment.centerRight,
            width: 270,
            child: TextFormField(
              decoration: InputDecoration(
              hintText: "Type Something",
              hintStyle(
              border: InputBorder.none,
    ),
    ),
    ),
    ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.send_outlined,
              color: Color(0xFF113953),
            ),
          ),
      ],
    ),
    );
  }
}