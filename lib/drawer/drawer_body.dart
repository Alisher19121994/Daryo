import 'package:flutter/material.dart';

class MyDrawerBody extends StatefulWidget {
  const MyDrawerBody({Key? key}) : super(key: key);

  static final String id = 'myDrawerBody_id';
  @override
  State<MyDrawerBody> createState() => _MyDrawerBodyState();
}

class _MyDrawerBodyState extends State<MyDrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            child: _category("So'ngi yangiliklar",Colors.blue),
          padding: EdgeInsets.only(top: 16.0),
          color: Colors.grey,),
          _category("Mahalliy",Colors.black),
          _category("Dunyo",Colors.black),
          _category("Texnalogik yangiliklar",Colors.black),
          const Divider(thickness: 1.0,),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: _category("Tanlangan xabarlar",Colors.green),
          ),
          const Divider(thickness: 1.0,),
          _category("Mahalliy",Colors.black),
          _category("Dunyo",Colors.black),
          _category("Texnalogik yangiliklar",Colors.black),
          _category("Mahalliy",Colors.black),
          _category("Dunyo",Colors.black),
          _category("Texnalogik yangiliklar",Colors.black),

        ],
      ),
    );
  }
  Widget _category(String title,[Color colors = Colors.black]){
    return Container(
      height: 40,
      margin:const EdgeInsets.only(left: 18),
      child: Text(title,style: TextStyle(color: colors,fontSize: 16,fontWeight: FontWeight.w500),),
    );
  }
}
