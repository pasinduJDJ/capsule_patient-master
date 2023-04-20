import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/widgets/chat_notifi_card.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ChatNotifiCard(
            chatpharmacyname: "CN Pharmacy",
            chattime: "Mar 20",
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
