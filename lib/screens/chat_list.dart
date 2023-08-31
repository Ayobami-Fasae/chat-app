import 'package:chat_app/widgets/chat.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Chat(
          name: 'Contact $index',
          message: 'Message $index',
        );
      },
    );
  }
}
