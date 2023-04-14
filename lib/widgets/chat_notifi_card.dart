import 'package:capsule_patient/constants/colors.dart';
import 'package:capsule_patient/screens/customer_chat_screen.dart';
import 'package:flutter/material.dart';

class ChatNotifiCard extends StatelessWidget {
  const ChatNotifiCard({
    super.key,
    required this.chatpharmacyname,
    required this.chattime,
    required this.chatpharmacylogo,
  });

  final String chatpharmacyname;
  final String chattime;
  final Image chatpharmacylogo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => customerChatScreen(
                      pharmacyname: chatpharmacyname,
                    )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 11,
        color: kWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 55,
              height: 55,
              child: CircleAvatar(
                backgroundImage: chatpharmacylogo.image,
                radius: 100,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatpharmacyname,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text("Give me a some time........")
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.circle,
                  size: 10,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(chattime)
              ],
            )
          ],
        ),
      ),
    );
  }
}
