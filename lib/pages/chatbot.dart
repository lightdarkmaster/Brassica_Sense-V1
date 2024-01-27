import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(198, 209, 226, 202),
        child: const Center(child: Text("Chat Bot")));
  }
}
