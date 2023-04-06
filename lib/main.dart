import 'package:daryo/drawer/drawer_body.dart';
import 'package:daryo/drawer/drawer_header_page.dart';
import 'package:daryo/pages/home_page.dart';
import 'package:daryo/pages/latest_page.dart';
import 'package:flutter/material.dart';

import 'drawer/drawer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        LatestPage.id: (context) => const LatestPage(),
        MyDrawerPage.id: (context) => const MyDrawerPage(),
        MyDrawerheaders.id: (context) => const MyDrawerheaders(),
        MyDrawerBody.id: (context) => const MyDrawerBody(),
      },
    );
  }
}
