import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class home_screen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        actions: [
          Icon(Icons.account_circle),
        ],
      ),
      drawer: Drawer(),
     
  body: ListView(
children: [
Image.asset('images/shopping.png',width: 100,height: 100,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal:30),
  child:   TextField(
    decoration: InputDecoration(
      hintText: "Search",
      prefix: Icon(Icons.search_rounded),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
),
SizedBox(height:15),
CarouselSlider(items: [
Container(
  margin: EdgeInsets.symmetric(horizontal:5),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        spreadRadius: 1,
        blurRadius: 8,
      ),
    ]
  ),
  child: Image.asset("images/mamol.jpg",fit:BoxFit.fill),
),
Container(
  margin: EdgeInsets.symmetric(horizontal:5),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        spreadRadius: 1,
        blurRadius: 8,
      ),
    ]
  ),
  child: Image.asset("images/kubah.jpg",fit:BoxFit.fill),
),
], options: CarouselOptions(aspectRatio: 2.7,autoPlay: true)),
SizedBox(height:15),
Padding(
  padding: const EdgeInsets.only(top: 5),
  child:   Container(
    height: MediaQuery.of(context).size.height*.5,
    width:MediaQuery.of(context).size.width ,
    child:   GridView.count(crossAxisCount: 2,
    mainAxisSpacing:20,
    crossAxisSpacing:20,
    children:[
    customGridView('images/kubah.jpg','500'),
    customGridView('images/mamol.jpg','400'),
    customGridView('images/moajnat.jpg','350'),
    customGridView('images/nash.jpg','600'),
    customGridView('images/shoso.jpg','440'),
    customGridView('images/yalnge.jpg','440'),



    ],
    ),
  ),
)
],
  ),
   bottomSheet: BottomSheet(
        elevation: 10,
        backgroundColor: Colors.blue[800],
        onClosing: (){},
        builder: (ctx){
          return Container(
            height: MediaQuery.of(context).size.height*.050,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
Icon(Icons.shopping_cart,color:Colors.white),
Text("الذهاب الى عربة",style: TextStyle(fontSize: 20,color: Colors.white),)
              ],
            ),
          );
        },
      ),
    );
 }

 Widget customGridView(image,price){

   return Container(
    decoration:BoxDecoration(
      color:Colors.white,
      borderRadius:BorderRadius.circular(10),
      boxShadow:[
        BoxShadow(
          color:Colors.grey,
          spreadRadius: 1,
          blurRadius: 8,
        ),
      ]
     ),
  child: Column(
children: [
  Image.asset("$image",width: 120,height: 120,),
  SizedBox(height:10),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:[
      CircleAvatar(
        child: Text("$price",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,backgroundColor: Colors.black),),
      ),
      CircleAvatar(
        backgroundColor:Colors.black,
        child: Icon(Icons.add_shopping_cart,color:Colors.white),
      ),
    ],
  ),
],
  ),
    );
 }
}
