import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../providers/home_provider.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/drawer_widget.dart';
import 'chat_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.search_rounded),
        label: 'Search',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble_rounded),
        label: 'Chats',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings_rounded),
        label: 'Profile',
      ),
    ];

    List<ScreenItem> screens = [
      ScreenItem(title: "Home", screenWidget: const HomeScreen()),
      ScreenItem(title: "Search", screenWidget: const SearchScreens()),
      ScreenItem(title: "Chat", screenWidget: const ChatScreen()),
      ScreenItem(title: "Profile", screenWidget: const ProfileScreen()),
    ];
    return Consumer<HomeProvider>(
      builder: (context, cHome, child) {
        return Scaffold(
          backgroundColor: scaffoldBackground,
          drawer: const DrawerWidget(),
          appBar: AppBarWidget(title: screens[cHome.selectedIndex].title),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cHome.selectedIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.black,
            items: bottomNavigationBarItems,
            onTap: (index) => cHome.changeIndex(index),
          ),
          body: screens[cHome.selectedIndex].screenWidget,
        );
      },
    );
  }
}

class ScreenItem {
  String title;
  Widget screenWidget;

  ScreenItem({required this.title, required this.screenWidget});
}
