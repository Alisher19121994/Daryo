import 'package:daryo/drawer/drawer_body.dart';
import 'package:flutter/material.dart';

import '../drawer/drawer_header_page.dart';

class MyDrawerPage extends StatefulWidget {
  const MyDrawerPage({Key? key}) : super(key: key);

  static final String id = "drawer_page_id";

  @override
  State<MyDrawerPage> createState() => _MyDrawerPage();
}

class _MyDrawerPage extends State<MyDrawerPage> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyDrawerheaders(),
          MyDrawerBody()
        ],
      ),
    );
  }
}
