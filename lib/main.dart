import 'package:flutter/material.dart';
import 'package:task/screens/login_screen.dart';
import 'package:task/screens/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body: Container(
         child: SingleChildScrollView(
           
          
          child:Column(
            children: <Widget>[

          Container(
            
            width: 500,height: 250,
           child:Card(color: Colors.orange[700],shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(500.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.all_inclusive ,size: 80,color:Colors.white,),
                    Text(
                     'KARMA',style: TextStyle(decoration: TextDecoration.underline,color:Colors.white,fontFamily: 'open sans',fontSize: 30),
              ),
               Text(
                'UNITING POWER',style: TextStyle(color:Colors.white,fontSize: 10),
              ),
               Text(
                'LOGIN',style: TextStyle(color:Colors.white,fontSize: 20),
              ),
                  ],
                ),
              ),),
        
         Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             
               Padding(padding: EdgeInsets.all(20),),
            
             Center(
               child:Column(
                 children: <Widget>[
                  Container(width: 250,height: 40,color: Colors.grey[200],
                                      child: TextField(
                     controller: controller,
                     decoration: InputDecoration(
                       
                        hintText: "phone Number",
                       // icon: Icon(Icons.text_fields),
            
                      ),
                 ),
                  ),
                  Padding(padding: EdgeInsets.all(10),),
                 Container(width: 250,height: 40,color: Colors.grey[200],
                                    child: TextField(
                     controller: controller1,
                     decoration: InputDecoration(
                        hintText: "password",
                        //icon: Icon(Icons.text_fields),
            
                      ),
                   ),
                 ),
                 ],),
                ),
                Text('forget password',style: TextStyle(color:Colors.amber),),
                Padding(padding: EdgeInsets.all(20),),
                Container(width: 80,height: 30,
                                  child: RaisedButton(
                               child: Center(
                                 child: Text("login"),
                                 
                               ),
                               color: Colors.lightGreen,
                               
                               onPressed: (){
                             
                               
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) => LoginScreen(name: controller.text) )
                    );  
                                },
                  ),
                ),
                Padding(padding: EdgeInsets.all(20),),
                Center(
                  child:Container(
                 child: Row(children: <Widget>[
                   Padding(padding: EdgeInsets.all(40),),
                Text("Not a member yet?"),
                RaisedButton(
                  child: Center(
                                 child: Text("click here"),
                                 
                               ),
                               color: Colors.orange[300],
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => RegisterScreen(name: controller.text) )
                  );  
                  },),
                ],),),
                ),
            ],
          ),
     ),
     ],)),
      
     ),                  
    );
  }
}
                  
                 