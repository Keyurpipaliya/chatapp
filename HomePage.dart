import 'package:flutter/material.dart';

  class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(color: Color(0xFF113953),
                fontSize: 30,
                fontWeight: FontWeight.bold,
          ),
            ),
      ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                        Icons.search_rounded,
                        color: Color(0xFF113953),
                    ),
                  ],
                ),
              ),
          ),
          ActiveChats(),
          RecentChats(),
       ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF113953),
          child: Icon(Icons.message_sharp),
        ),
      );
    }
}