import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ul/contant.dart';
import 'package:whatsapp_clone_ul/model/chatmodel.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: kPrimaryColor,
      leadingWidth: 70,
      leading: InkWell(
        onTap: () {
          return Navigator.pop(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back,
              size: 24,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blueGrey,
              
            )
          ],
        ),
      ),
    ));
  }
}
