import 'package:flutter/material.dart';

class ActiveChats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 25, left: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 11, horizontal: 13),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ]),
                        child: Column(
                          children: [
                            for(int i = 0; i < 10; i++)
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, "chartPage");
                              },
                              child: Container(
                                height: 65,
                                child: Row(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(35),
                                    child: Image.asset(
                                        "",
                                      height: 65,
                                      width: 65,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Programmmer",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF113953),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          "Hello, Devloper, How Are You?....",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black45,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(padding: const EdgeInsets.symmetric(8.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "12.30",
                                        style: TextStyle(fontSize: 15, color: Colors.black45),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        alignment: Alignment.center,
                                        child: Text("1", style: TextStyle(color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                                ),
                              ),
                            ),
                          ),
                        ],),
                ),
                ),
            ],
          ),
      ),
    ),
  }
}