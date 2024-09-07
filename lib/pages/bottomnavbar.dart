import 'package:flutter/material.dart';
import 'package:foodhub/pages/Home.dart';
import 'package:foodhub/pages/Profile.dart';
import 'package:foodhub/pages/order.dart';
import 'package:foodhub/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _Bottomnavbar();
}

class _Bottomnavbar extends State<Bottomnavbar> {
  int currentTableIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  void initState() {
    homepage = Home();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.redAccent,
          color: Colors.white,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTableIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.red,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.red,
            ),
            Icon(
              Icons.wallet_outlined,
              color: Colors.red,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.red,
            ),
          ]),
      body: pages[currentTableIndex],
    );
  }
}
