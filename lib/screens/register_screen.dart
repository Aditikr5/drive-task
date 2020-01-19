import 'package:flutter/material.dart';

class RegisterScreen extends  StatefulWidget {
 final String name;
  RegisterScreen({this.name});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
   bool val=false;
    return Scaffold(
     
      
      body: 
      
               Container(
                child: SingleChildScrollView(
                                child: Column(
                    children:<Widget>[
                     Container(
                  
                  width: 500,height: 250,
               child:Card(color: Colors.orange[700],shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(500.0),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.all_inclusive,size: 80,color:Colors.white,),
                          Text(
                           'KARMA',style: TextStyle(decoration: TextDecoration.underline,color:Colors.white,fontFamily: 'open sans',fontSize: 30),
                    ),
                      Text('UNITING POWER',style: TextStyle(color:Colors.white,fontSize: 10),),
                     Text(
                      'REGISTER',style: TextStyle(color:Colors.white,fontSize: 20),
                    ),
                        ],
                      ),
                    ),),
                    Padding(padding: EdgeInsets.all(20),),
                    Center(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(width: 250,height: 40,color: Colors.grey[200],
                              child:  TextField(
                       controller: controller3,
                       decoration: InputDecoration(
                          hintText: "Name",
                          //icon: Icon(Icons.text_fields),
              
                        ),
                     ),
                            ),
                            Padding(padding: EdgeInsets.all(10),),
                            Container(
                              width: 250,height: 40,color: Colors.grey[200],
                              child:  TextField(
                       controller: controller4,
                       decoration: InputDecoration(
                          hintText: "Phone Number",
                          //icon: Icon(Icons.text_fields),
              
                        ),
                     ),
                            ),
                             Padding(padding: EdgeInsets.all(10),),
                             Container(
                              width: 250,height: 40,color: Colors.grey[200],
                              child:  TextField(
                       controller: controller5,
                       decoration: InputDecoration(
                          hintText: "Password",
                          //icon: Icon(Icons.text_fields),
              
                        ),
                     ),
                            ),
                            Row(
                              children: <Widget>[
                                Checkbox(value: val,
                                  onChanged: (bool value)
                                 {
                                   setState((){
                                     val= value;
                                     
                                   });
                                 },
                                 
                                ),
                                Text('I agree'),
                                Text('Terms & Conditions',style: TextStyle(color:Colors.amber)),
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(20),),
                             Container(width: 100,height: 50,
                            child: RaisedButton(color: Colors.green,
                              child: Text('REGISTER',style: TextStyle(color:Colors.white)),
                              onPressed: (){
                               Navigator.pop(context,MaterialPageRoute);
                              },
                              
                            ),
                            ),
                             Padding(padding: EdgeInsets.all(10),),
                    
                    Container(
                   child: Center(
                    child: Row(children: <Widget>[
                       Padding(padding: EdgeInsets.all(40),),
                  Text("Already a member"),
                  RaisedButton(
                      child: Center(
                                 child: Text("click here"),
                                 
                               ),
                               color: Colors.orange[300],
                      onPressed: (){
                        Navigator.pop(context,MaterialPageRoute);
                      },),
                  ],),
                   ),),
                  
                          ],
                        ),
                      ),
                    )
               ],),
                ),
            ),
     
            
      
     
   );
  }
}