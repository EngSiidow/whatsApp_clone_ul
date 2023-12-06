import 'package:flutter/material.dart';

class ChatModel {
  String name;
  ImageProvider<Object> image;
  bool? isGroup;
  String time;
  String currentMessage;
  
  ChatModel(
      {required this.name,
      required this.image,
      this.isGroup,
      required this.time,
      required this.currentMessage,
    

      
      });
}
