import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/pages/home_page.dart';
import 'package:sneaker/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[300], // Replace with your desired color
      statusBarIconBrightness:
          Brightness.light, // Adjust the status bar text color
    ));

    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        routes: {
          // ignore: prefer_const_constructors
          '/HomePage': (context) =>  HomePage(),
        },
      ) ,
    );
  }
}
