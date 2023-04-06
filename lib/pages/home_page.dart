import 'package:daryo/pages/latest_page.dart';
import 'package:flutter/material.dart';

import '../drawer/drawer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static final String id = "home_page_id";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,

        child: Scaffold(
          drawer:MyDrawerPage(),

          appBar: AppBar(
            centerTitle: true,
            title: const Text("Daryo"),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(child: Text("So'ngi yangiliklar"),),
                Tab(child: Text("Asosiy yangiliklar"),),
                Tab(child: Text("Eng ko'p ko'rilganlar"),),
              ],
            ),
          ),

          body: TabBarView(
            children: [
              LatestPage(),
              Container(

              ),
              Container(

              ),
            ],
          ),
        ));
  }
}
