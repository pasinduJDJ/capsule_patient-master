import 'package:flutter/material.dart';

import '../models/chat.dart';
import '../models/chat_response.dart';

class ChatProvider extends ChangeNotifier {
  List<Chat> chats = [];
  List<ChatResponse> chatResponses = [];
  ChatResponse initialMessage = ChatResponse(
    message: "Hello",
    isResponse: false,
    status: ChatStatus.success,
  );

  getChatByUID() {
    return chatResponses;
  }

  sendIntialChat() {
    addMessage(initialMessage.message);
    notifyListeners();
  }

  setInitialMessage() {
    chatResponses.add(initialMessage);
    notifyListeners();
  }

  addMessage(String message) async {
    chatResponses.add(ChatResponse(
      message: message,
      isResponse: false,
      status: ChatStatus.success,
    ));
    notifyListeners();
    await Future.delayed(const Duration(seconds: 3), () {
      chatResponses.add(ChatResponse(
        message: "Typing...",
        isResponse: true,
        status: ChatStatus.typing,
      ));
      notifyListeners();
    });

    chatResponses.removeLast();
    notifyListeners();
    chatResponses.add(ChatResponse(
      message: "Hello this is sample response",
      isResponse: true,
      status: ChatStatus.success,
    ));
    notifyListeners();
  }

  getAllChats() {
    return chats;
  }

  addChat(Chat chat) {
    chats.add(chat);
    notifyListeners();
  }
}
