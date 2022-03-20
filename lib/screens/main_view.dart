import 'package:flutter/material.dart';
import 'package:frapper/screens/home_page.dart';
import 'package:frapper/screens/offers_page.dart';
import 'package:frapper/screens/profile_page.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  List<Widget> bottomBarPages = const [
    HomePage(),
    OffersPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 50,
        //backgroundColor: Colors.purple,
        leading: const Center(
          child: Text(
            "Frapper",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
              splashRadius: 20.0,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
              ),
              splashRadius: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28.0,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 24,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_offer_rounded,
              size: 24,
            ),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              size: 24,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: bottomBarPages[_selectedIndex],
    );
  }
}
