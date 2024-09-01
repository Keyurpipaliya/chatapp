import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.recive),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(3, 3),
                  ),
                ]),
                  child: Text(
                  "Hi, How are you Devloper",
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 80),
          child: ClipPath(
            clipper: LowerNipMessageClipper(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
    ),
                    child: Text(
                      "Hello, Programmer, i am fine thank for you asking about you",
                      style: TextStyle(fontSize: 17, color: Colors.white),
    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}