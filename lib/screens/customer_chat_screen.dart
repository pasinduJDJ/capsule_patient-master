import 'package:flutter/material.dart';

class CustomerChatScreen extends StatelessWidget {
  const CustomerChatScreen({super.key, required this.pharmacyname});

  final String pharmacyname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pharmacyname),
        centerTitle: true,
        actions: const [
          Icon(Icons.call),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            color: Colors.grey.shade300,
            child: const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hintText: "Type your message here",
                  prefixIcon: Icon(Icons.send_rounded)),
            ),
          )
        ],
      ),
    );
  }
}
