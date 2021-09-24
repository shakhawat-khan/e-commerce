import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text("Women",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          )
        ),
        ),
        categories()
      ],
    ) ;
  }
}

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List<String> categories = [
    "Hand bag",
    "jewellery",
    "Footwear",
    "Dresses",
    "perfume",

  ];

  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          itemBuilder:(context,index)=>buildcatagory(index),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
      ),
    );
  }

  Widget buildcatagory(int index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children:<Widget> [
        GestureDetector(

          onTap: ()
          {
            setState(() {
              selectedIndex=index;
            });
          },

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30 ),
            child: Column(
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index ? Colors.black : Colors.grey,

                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 3,
          width: 30,
          color: selectedIndex == index ? Colors.black : Colors.transparent,

          //padding: EdgeInsets.symmetric(horizontal: 30.0),

        )
      ],
    );
  }
}

