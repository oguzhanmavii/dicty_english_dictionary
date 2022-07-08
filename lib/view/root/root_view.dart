import 'package:english_accent_dictionary/view/home/home_view.dart';
import 'package:english_accent_dictionary/view/recent/recent_view.dart';
import 'package:english_accent_dictionary/view/search/search_view.dart';
import 'package:english_accent_dictionary/view/settings/setting_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootView extends StatefulWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          bottomNavyBarItem("Home", CupertinoIcons.home),
          bottomNavyBarItem("Recent", CupertinoIcons.time),
          bottomNavyBarItem("Search", CupertinoIcons.search),
          bottomNavyBarItem("Special", CupertinoIcons.gift),
          bottomNavyBarItem("Setting", CupertinoIcons.settings),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavyBarItem(
    String label,
    IconData iconData,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}

List<Widget> _pages = [
  const HomeView(),
  const Recent(),
  SearchResultView(),
  const GiftView(),
  const SettingView(),
];

class GiftView extends StatelessWidget {
  const GiftView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
