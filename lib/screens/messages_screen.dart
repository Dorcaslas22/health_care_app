import 'package:flutter/material.dart';

import 'chat_screen.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key});

  List imgs = [
    "Doc1.jpg",
    "Doc2.jpg",
    "Doc3.jpg",
    "Doc4.jpg",
    "Doc2.jpg",
    "Doc3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          Padding(padding: EdgeInsets.symmetric(horizontal:20),
            child: Text(
              "Messages",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            ),
          ),
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.search,
                    color: Color(0xFF8EB8E2),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Active Now",
              style: TextStyle(
               fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                       BoxShadow(
                       color: Colors.black12,
                         spreadRadius: 2,
                         blurRadius: 10,
                       ),
                      ],
                    ),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: Container(
                            height: 60,
                            width: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset("assets/images/${imgs[index]}",
                                fit: BoxFit.cover,
                              ),
                            ) ,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.all(3),
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
          ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recent chats",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(bottom:10),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                      builder: (context) => ChatScreen(),));
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/${imgs[index]}",
                    ),
                  ),
                  title: Text("Dr.Doctor Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle:  Text("Hello Doc, How is everything?",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  trailing: Text("10:50am",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ),
              );
              },
          ),
        ],
      ),
    );
  }
}
