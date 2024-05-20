import 'package:flutter/material.dart';
import '../widgets/chat_notifi_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ChatNotifiCard(
            chatpharmacyname: "CN Pharmacy",
            chattime: "Mar 21",
            chatpharmacylogo: Image.asset("assets/images/phr1.png"),
          ),
          const SizedBox(
            height: 5,
          ),
          ChatNotifiCard(
            chatpharmacyname: "Healthcare",
            chattime: "Mar 18",
            chatpharmacylogo: Image.asset("assets/images/phr2.png"),
          )
        ],
      ),
    );
  }
}
