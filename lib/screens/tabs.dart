import 'package:chat_app/screens/chat_list.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ChatApp'),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ]),
        ),
        body: const TabBarView(children: [
          Icon(Icons.camera_alt),
          ChatListScreen(),
          Text('Status'),
          Icon(Icons.call),
        ]),
      ),
    );
  }
}
