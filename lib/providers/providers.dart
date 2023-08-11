import 'package:capsule_patient/providers/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'chat_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<ChatProvider>(
    create: (context) => ChatProvider(),
  ),
  ChangeNotifierProvider<HomeProvider>(
    create: (context) => HomeProvider(),
  ),
];
