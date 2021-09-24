import 'package:flutter/material.dart';
import 'body.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (homePage()),


  ));
}


class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:Body() ,
    );
  }

  AppBar buildAppBar()
  {

    return AppBar(

      actions: <Widget>[

        IconButton(
          onPressed: ()
          {

          },
          icon: Icon(
            Icons.search_sharp,
            size: 30.00,
          ),
          color: Colors.grey ,
        ),

        IconButton(onPressed: ()
        {
          //here is on press
        },
          icon:Icon(
            Icons.shopping_cart_outlined,
            size: 30.00,
          ),
          color: Colors.grey ,
        ),

        SizedBox(width: 10) //it will move the right icon formr right to left

      ],

      leading: IconButton(onPressed: ()
      {

      },
        icon: Icon(Icons.arrow_back,
          size: 30.00,
        ),

        color: Colors.grey,
      ),


      backgroundColor: Colors.white,

      toolbarHeight: 70, // increase the leanth of appbar



    );


  }

  }




