import 'package:flutter/material.dart';

import '../widgets/chat_sample.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Color(0xFF8EB8E2),
          leadingWidth:30,
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                CircleAvatar(radius: 25,
                  backgroundImage:AssetImage("assets/images/Doc4.jpg"),
                  ),
                Padding(padding: EdgeInsets.only(left: 10),
                  child: Text("Dr. Emma..",
                    style: TextStyle(
                    color: Colors.white,
                      fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(Icons.call,
                color: Colors.white,
              size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(Icons.video_call,
                color: Colors.white,
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(Icons.more_vert,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
       padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
        itemBuilder: (context,index) => ChatSample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.add,
                size: 30,),
            ),
            Padding(padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width/1.5,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.send,
                size: 24,
                color:Color(0xFF8EB8E2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
