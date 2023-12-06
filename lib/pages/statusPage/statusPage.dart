import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_clone_ul/contant.dart';
import 'package:whatsapp_clone_ul/pages/statusPage/head_status.dart';
import 'package:whatsapp_clone_ul/pages/statusPage/other_section.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.greenAccent[100],
              elevation: 8,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: kPrimaryColor,
              ),
            ),
          ),
          Gap(13),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: kPrimaryColor,
            elevation: 5,
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadStatus(),
            label("Recent updates"),
            OtherPartsStatus(
              name: "Eng Ahmed",
              time: "09:30",
              ImageName: "assets/EngAhmed.jpg",
              isSeen: true,
              statusNum: 10,
            ),
            OtherPartsStatus(
              name: "Eng Abdullahi Khalifa",
              time: "09:35",
              ImageName: "assets/EngKhaliifa.jpg",
              isSeen: true,
              statusNum: 3,
            ),
            OtherPartsStatus(
              name: "Eng Hafsa",
              time: "10:10",
              ImageName: "assets/EngHafsa.jpg",
              isSeen: true,
              statusNum: 2,
            ),
            OtherPartsStatus(
              name: "Lovely Sister",
              time: "09:30",
              ImageName: "assets/LovelySister.jpg",
              isSeen: true,
              statusNum: 4,
            ),
            Gap(10),
            label("Viewed updates"),
            OtherPartsStatus(
              name: "Eng Abdullahi Khalifa",
              time: "09:35",
              ImageName: "assets/EngKhaliifa.jpg",
              isSeen: false,
              statusNum: 2,
            ),
            OtherPartsStatus(
              name: "Eng Hafsa",
              time: "10:10",
              ImageName: "assets/EngHafsa.jpg",
              isSeen: false,
              statusNum: 2,
            ),
            OtherPartsStatus(
              name: "Lovely Sister",
              time: "09:30",
              ImageName: "assets/LovelySister.jpg",
              isSeen: false,
              statusNum: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelname) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelname,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
