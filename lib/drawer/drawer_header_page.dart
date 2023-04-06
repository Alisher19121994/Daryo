import 'package:flutter/material.dart';

class MyDrawerheaders extends StatefulWidget {
  const MyDrawerheaders({Key? key}) : super(key: key);
  static final String id = "drawer_header_id";

  @override
  State<MyDrawerheaders> createState() => _MyDrawerheaders();
}

class _MyDrawerheaders extends State<MyDrawerheaders> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      //margin: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                "Daryo",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(width: 37,),
             selectLanguage()
            ],

          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text(
              "Toshkent",style: TextStyle(color: Colors.white, fontSize: 16),)  ,
              Row(
                children: [
                  Icon(Icons.cloud_circle_sharp,color: Colors.white,),
                 const SizedBox(width:4,),
                 const Text(
                   "+12.0",style: TextStyle(color: Colors.white),)
                ],
              )
            ],
          ),
         const Divider(thickness: 1.0,color: Colors.white,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currencyRate(Icons.monetization_on_outlined,"11.6900"),
              currencyRate(Icons.euro_symbol,"12.3210"),
              currencyRate(Icons.currency_ruble,"160.00"),
            ],
          ),

        ],
      ),
      decoration: BoxDecoration(color: Colors.blue),
    );
  }

  List<bool> _isSelected = [false,true];

  Widget selectLanguage(){
    return Expanded(child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white)
      ),
        width: 180,
        height: 30,
        child: ToggleButtons(
          selectedBorderColor: Colors.transparent,
          borderColor: Colors.transparent,
            children: [
              Container(
                child: Center(
                  child: Text("Lotincha",style: TextStyle(color: _isSelected[0] ? Colors.blue : Colors.white,),),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)
                  ),
                  color: _isSelected[0] ? Colors.white : Colors.blue,
                ),
                width: 80,
                height: 30,
              ),
              Container(
                child: Text("Kirilcha",style: TextStyle(color: _isSelected[1] ? Colors.blue : Colors.white,),),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _isSelected[1] ? Colors.white : Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                width: 80,
                height: 30,
              ),
            ],
            isSelected: _isSelected,
          onPressed: (int index){
              setState(() {
                if(index ==0){
                  _isSelected[0] = true;
                  _isSelected[1] = false;
                }else{
                  _isSelected[1] = true;
                  _isSelected[0] = false;
                }
              });
          },
        )
    ));
  }

  Widget currencyRate(IconData iconData,String rate){
    return Row(
      children: [
        Icon(iconData, color: Colors.white,),
        Text(rate,style: TextStyle(color: Colors.white),)
      ],
    );
  }
}
