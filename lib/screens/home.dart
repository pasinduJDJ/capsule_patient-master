import 'package:capsule_patient/screens/chat_screen.dart';
import 'package:capsule_patient/screens/home_screen.dart';
import 'package:capsule_patient/screens/profile_screen.dart';
import 'package:capsule_patient/screens/search_screen.dart';
import 'package:capsule_patient/widgets/app_bar_widget.dart';
import 'package:capsule_patient/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
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
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBarWidget(title: screens[_selectedIndex].title),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        items: bottomNavigationBarItems,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
      body: screens[_selectedIndex].screenWidget,
    );
  }
}

class ScreenItem {
  String title;
  Widget screenWidget;

  ScreenItem({required this.title, required this.screenWidget});
}
