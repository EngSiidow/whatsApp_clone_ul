import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_clone_ul/contant.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          callCard(
              // Image.asset('assets/EngKhaliifa.jpg') as String),
              "Eng Khaliifa ",
              Icons.call_made,
              Colors.green,
              "Yesterday, 11:15 PM",
              'assets/EngKhaliifa.jpg'),
          callCard("Eng Hafsa", Icons.call_missed, Colors.red, "Today, 7:00 AM",
              'assets/EngHafsa.jpg'),
          callCard(
              // Image.asset('assets/EngKhaliifa.jpg') as String),
              "Eng Khaliifa ",
              Icons.call_made,
              Colors.green,
              "Yesterday, 11:15 PM",
              'assets/EngKhaliifa.jpg'),
          callCard("Eng Hafsa", Icons.call_missed, Colors.red, "Today, 7:00 AM",
              'assets/EngHafsa.jpg'),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 18,
                color: Color(0xFF6C6464),
              ),
              Gap(5),
              Text(
                "Your personal calls are",
                style: TextStyle(
                  color: Color(0xFF6C6464),
                ),
              ),
              Gap(1),
              Text(
                "end-to-end encrypted",
                style: TextStyle(color: Colors.green.shade400),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class CallCard {}

@override
Widget callCard(String name, IconData iconData, Color iconColor, String time,
    String image) {
  return Card(
    margin: EdgeInsets.only(bottom: 0.5),
    child: ListTile(
      leading: CircleAvatar(
        radius: 27,
        backgroundImage: AssetImage(image as String),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
            size: 20,
          ),
          Gap(6),
          Text(time)
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: kPrimaryColor,
        size: 28,
      ),
    ),
  );
}
