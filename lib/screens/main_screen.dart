import 'package:flutter/material.dart';
import 'package:monews_application/constants/color_constants.dart';
import 'package:monews_application/screens/add_screen.dart';
import 'package:monews_application/screens/discover_screen.dart';
import 'package:monews_application/screens/home_screen.dart';
import 'package:monews_application/screens/save_screen.dart';
import 'package:monews_application/screens/user_profile_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationBarItem = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedBottomNavigationBarItem,
          onTap: (int index) {
            setState(() {
              _selectedBottomNavigationBarItem = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_profile.png'),
              activeIcon: Image.asset('images/icon_profile.png'),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_save.png'),
              activeIcon: Image.asset('images/icon_save.png'),
              label: 'save',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_add.png'),
              activeIcon: Image.asset('images/icon_add.png'),
              label: 'add',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_discover.png'),
              activeIcon: Image.asset('images/icon_discover_active.png'),
              label: 'discover',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_home.png'),
              activeIcon: Image.asset('images/icon_active_home.png'),
              label: 'home',
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationBarItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      UserProfileScreen(),
      SaveScreen(),
      AddScreen(),
      DiscoverScreen(),
      HomeScreen(),
    ];
  }
}
