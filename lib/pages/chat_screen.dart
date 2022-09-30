import 'package:flutter/material.dart';
import 'package:flutter_app/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dummyData[i].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  dummyData[i].time,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                dummyData[i].message,
                style: const TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
