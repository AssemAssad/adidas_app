import 'package:flutter/Material.dart';

import 'CartScreen.dart';
import 'Home.dart';
import 'OrderScreen.dart';
import 'ProfileScreen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screen = [
    Home(),
    CartScreen(),
    OrderScreen(),
    ProfileScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(

        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text("Home"),
              selectedColor: Colors.white,
              unselectedColor: Colors.grey
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text("Cart"),
            selectedColor: Colors.white,
            unselectedColor: Colors.grey,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text("Order"),
            selectedColor: Colors.white,
            unselectedColor: Colors.grey,
          ),
          /// Profile
          SalomonBottomBarItem(
              icon: Icon(Icons.perm_identity),
              title: Text("Profile"),
              selectedColor: Colors.white,
              unselectedColor: Colors.grey
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(23, 88, 150, 1),
      body:
      screen[currentIndex],
    );
  }
}
