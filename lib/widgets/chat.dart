import 'package:chat_app/screens/chat.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  Chat({
    super.key,
    required this.name,
    required this.message,
  }) : url = '';

  final String name;
  final String message;
  String url;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: url != ''
          ? CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(url),
            )
          : const CircleAvatar(
              radius: 20,
            ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatScreen();
        }));
      },
    );
  }
}
