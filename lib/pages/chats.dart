import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ul/CustomUl/chat_cards.dart';
import 'package:whatsapp_clone_ul/contant.dart';
import 'package:whatsapp_clone_ul/model/chatmodel.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> chats = [
      ChatModel(
        image: AssetImage('assets/EngAhmed.jpg'),
        name: "Eng ahmed",
        isGroup: false,
        currentMessage: "Asc ww ustaadii",
        time: "10:00",
      ),
      ChatModel(
        image: AssetImage('assets/EngKhaliifa.jpg'),
        name: "Eng Abdullahi Khalif",
        isGroup: false,
        currentMessage: "Eng ii wrn",
        time: "11:00",
      ),
      ChatModel(
        image: AssetImage('assets/EngHafsa.jpg'),
        name: "Eng Hafsa",
        isGroup: false,
        currentMessage: "Asc Akhwan",
        time: "1:00",
      ),
      ChatModel(
        image: AssetImage('assets/p1.jpg'),
        name: "My Bro",
        isGroup: false,
        currentMessage: "GYM ka ma aaday nio",
        time: "7:00",
      ),
      ChatModel(
        image: AssetImage('assets/myQueen.jpg'),
        name: "My Queen",
        isGroup: false,
        currentMessage: " falaadka iga daa gabareey",
        time: "7:00",
      ),
      ChatModel(
        image: AssetImage('assets/EngSharma.jpg'),
        name: "Wll Sharma",
        isGroup: false,
        currentMessage: "Asc ustaadii",
        time: "9:00",
      ),
      ChatModel(
        image: AssetImage('assets/LovelySister.jpg'),
        name: "Gabdha Cida dariska",
        isGroup: false,
        currentMessage: "waan fcnhy wll",
        time: "1:00",
      ),
      ChatModel(
        image: AssetImage('assets/EngMayow.jpg'),
        name: "My Bro",
        isGroup: false,
        currentMessage: "Ustaadii Slides inoo soo dir",
        time: "2:00",
      ),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
