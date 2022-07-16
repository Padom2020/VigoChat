import 'package:flutter/material.dart';

import '../models/chatUsers.dart';
import '../widgets/conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Dominic Akpan",
        messageText: "Awesome Setup",
        imageURL: "https://i.ibb.co/3SkkRN4/20220127143714-IMG-5528.jpg",
        time: "Now"),
    ChatUsers(
        name: "Techy Dom",
        messageText: "That's Great",
        imageURL: "https://i.ibb.co/Ms4TwFL/20220127134634-IMG-5417.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Vigo Place",
        messageText: "Hey where are you?",
        imageURL: "https://i.ibb.co/s1gV3CY/20220127143619-IMG-5524.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Chidozie Uchenna",
        messageText: "Busy! Call me in 20 mins",
        imageURL: "hhttps://i.ibb.co/pLK5pqN/20220127141008-IMG-5477.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "Uwakkfon Francis",
        messageText: "Thankyou, It's awesome",
        imageURL: "https://i.ibb.co/zZwq24h/20220127140742-IMG-5472.jpg",
        time: "23 Mar"),
    ChatUsers(
        name: "John Doe",
        messageText: "will update you in evening",
        imageURL: "https://i.ibb.co/3dRDyWL/DSC-7080-copy.jpg",
        time: "17 Mar"),
    ChatUsers(
        name: "Aniekeme Uko",
        messageText: "Can you please share the file?",
        imageURL: "https://i.ibb.co/3dRDyWL/DSC-7080-copy.jpg",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "https://i.ibb.co/zZwq24h/20220127140742-IMG-5472.jpg",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Chat Box",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
