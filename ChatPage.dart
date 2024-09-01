import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget Build(BuildContext context) {
    return Scaffold(
      // for custom size of App Bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 30,
            title: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network("https://www.flaticon.com/free-icon/developer_6840478"),
                  height: 45,
                  width: 45,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Devloper",
                    style: TextStyle(color: Colors.lightGreen),
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 27),
                  child: Icon(
                    Icons.call_outlined,
                    color: Colors.white10,
                    size: 30,
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 27),
                child: Icon(
                  Icons.video_call_sharp,
                  color: Colors.white10,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 27),
                child: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white10,
            ],
          ),
        ),
      ),
      body: ListView(
          children: [
            padding: EdgeInsets.only(top:20, left: 20, right: 20, bottom: 75),
            children: [
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
            ],
    ),
    bottomSheet: ChatBottomSheet(),
    );
  }
}