import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ul/model/chatmodel.dart';
import 'package:whatsapp_clone_ul/pages/individual_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualPage(chatModel: chatModel),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: AssetImage('assets/'),
              radius: 30,
              child: ClipOval(
                child: Image(
                  image: chatModel.image,
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all_rounded),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(fontFamily: 'OpenSans', fontSize: 13),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 20, left: 80),
          //   child: Divider(
          //     thickness: 1,
          //   ),
          // ),
        ],
      ),
    );
  }
}
