import 'package:flutter/material.dart';
import 'package:myapp/screens/account.dart';
import 'package:myapp/screens/cart.dart';
import 'package:myapp/screens/explore.dart';
import 'package:myapp/screens/favourite.dart';
import 'package:myapp/screens/shop.dart';
import 'package:myapp/sub_screens/product_details.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;
  List<Widget> widgetList = [
    shop(),
    explore(),
    cart(),
    favourite(),
    account(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: widgetList[myIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          selectedItemColor: Color(0xFF53B175),
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
