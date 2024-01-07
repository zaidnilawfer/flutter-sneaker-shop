import 'package:flutter/material.dart';
import 'package:sneaker/components/bottom_nav_bar.dart';
import 'package:sneaker/pages/cart_page.dart';
import 'package:sneaker/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add this line
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 8),
                child: Icon(Icons.menu),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          })),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset(
              'lib/images/pumaLogo.png',
              color: Colors.white,
            )),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25),
              child: ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/HomePage');
                },
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 420),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/');
                },
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
