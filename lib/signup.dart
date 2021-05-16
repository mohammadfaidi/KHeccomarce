import 'package:flutter/material.dart';
 
void main() => runApp(SignUp());
 
	
 
class SignUp extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<SignUp> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),

      ),
  body: Container(
    child:Column(
      children: <Widget>[
        Text("Hellow world"),
     

      ],

    ),
  
  
  ),
    ),



    );
 }

}

