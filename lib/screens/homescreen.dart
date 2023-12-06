import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ul/contant.dart';
import 'package:whatsapp_clone_ul/pages/callsPage/callsPage.dart';
import 'package:whatsapp_clone_ul/pages/chats.dart';
import 'package:whatsapp_clone_ul/pages/groupPage.dart';
import 'package:whatsapp_clone_ul/pages/statusPage/statusPage.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New group"),
                value: "New group",
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
                value: "New broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp web"),
                value: "Whatsapp web",
              ),
              PopupMenuItem(
                child: Text("Starred messages"),
                value: "Starred messages",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          }),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: kWhiteColor,
          tabs: [
            Tab(
              icon: Icon(Icons.group),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          GroupPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
    );
  }
}
