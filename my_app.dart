import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client, required this.channel}) : super(key: key);

  final StreamChatClient client;
  final Channel channel;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      builder: (context, child) {
        return StreamChat(
          child: child,
          client: client,
          channel: channel,
        );
      },
      home: StreamChannel(
          channel: channel,
          child: ChannelPage
      ),
    );
  }
}