import 'auth_user_model.dart';
import 'chat_response.dart';

class Chat {
  AuthUserModel? authUser;
  List<ChatResponse>? chatResponses = [];

  Chat({this.authUser, this.chatResponses});
}
