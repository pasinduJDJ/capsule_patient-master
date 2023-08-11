import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/chat_response.dart';
import '../providers/chat_provider.dart';

class ChatDetalsScreen extends StatefulWidget {
  final String userName;
  const ChatDetalsScreen({super.key, required this.userName});

  @override
  State<ChatDetalsScreen> createState() => _ChatDetalsScreenState();
}

class _ChatDetalsScreenState extends State<ChatDetalsScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName),
        centerTitle: true,
        actions: const [
          Icon(Icons.info),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Consumer<ChatProvider>(
            builder: (context, pChat, child) {
              return Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  itemCount: pChat.chatResponses.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _chatBubble(
                      pChat.chatResponses[index],
                      context,
                    );
                  },
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(15),
                      hintText: "Type your message here ....",
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(50, 50),
                    padding: const EdgeInsets.all(0),
                  ),
                  onPressed: () {
                    Provider.of<ChatProvider>(context, listen: false)
                        .addMessage(controller.text.toString());
                  },
                  child: const Icon(Icons.send),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _chatBubble(ChatResponse chat, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment:
            !chat.isResponse ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (chat.isResponse)
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/person1.png"),
            ),
          if (chat.isResponse) const SizedBox(width: 10),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: chat.status == ChatStatus.typing
                  ? null
                  : BoxDecoration(
                      color: !chat.isResponse
                          ? Theme.of(context).primaryColor
                          : Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20),
                          topRight: const Radius.circular(20),
                          bottomLeft: !chat.isResponse
                              ? const Radius.circular(20)
                              : const Radius.circular(0),
                          bottomRight: !chat.isResponse
                              ? const Radius.circular(0)
                              : const Radius.circular(20)),
                    ),
              child: Text(
                chat.message,
                style: TextStyle(
                  fontSize: 15,
                  color: !chat.isResponse ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          if (!chat.isResponse) const SizedBox(width: 10),
          if (!chat.isResponse)
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/person2.png"),
            ),
        ],
      ),
    );
  }
}
