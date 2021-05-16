import 'package:dsclogin/index.dart';
import 'package:dsclogin/signup.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(SignUP());
 
	
 
class SignUP extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<SignUP> {
     bool checkBoxVal  = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
             debugShowCheckedModeBanner: false,
      home: 
    Scaffold(
      appBar: AppBar(
        
    backgroundColor: Colors.blue[800],
    elevation: 20,
    
        title: Text("Buy ",style: 
        TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white),),
        
        leading: Icon(Icons.backup_outlined),
        centerTitle: true,
        actions: [
          Icon(Icons.add_shopping_cart)
        ],
  
        //SizedBox(width: 10.0,), 

      ),
  body: Container(
    width: MediaQuery.of(context).size.width,
    child:Column(
      children: <Widget>[
        Image.network("https://www.crushpixel.com/big-static16/preview4/shopping-cart-blue-rgb-color-2238956.jpg",width:MediaQuery.of(context).size.width*.5,height: MediaQuery.of(context).size.height*.3,),
      Text("Weclome Back ",style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.blue[800]),),
      SizedBox(height:30),
  customTextFied("email",false,Icon(Icons.email)),
  SizedBox(height:30),
  customTextFied("password",true,Icon(Icons.lock)),
      
      Padding(
        padding: const EdgeInsets.only(left:25),
        child: Row(
children: [
  Checkbox(value: checkBoxVal, 
  onChanged: (value){
setState(() {
  checkBoxVal = value;
});

  }),
  Text("I am Admin ",style: TextStyle(fontSize: 15),)
],

        ),
      ),
      SizedBox(height:25),
      Padding(
        padding: const EdgeInsets.only(left:25),
        child: Row(
children: [
Text("Do not have am account? ",style:TextStyle(fontSize: 17)),
GestureDetector(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>
    SignUp()
    
    ));
  },
  child: Text("Sign Up",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color :Colors.blue[800])))

],
        ),
      ),
      SizedBox(height:30),
      ElevatedButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>
    home_screen()
    
    ));
      }, 
    onLongPress: (){
      print("Long Hello");
    },
      child: Text("Login "),
      style: ElevatedButton.styleFrom(
primary: Colors.blue[800],
      ),
      ),
      ],

    ),
  
  
  ),
    ),



    );
 }

Widget customTextFied(hint,obsecure,icon){
return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
          obscureText: obsecure,
          decoration: InputDecoration(
            hintText: '$hint',
            prefixIcon: icon,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)
            ),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)
            ),
            

          ),
      validator: (value){
        if (value.isEmpty){
          return "Email is Empty";
        }
        
      }
      

    ),
  );

}
}


