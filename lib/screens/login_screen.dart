import 'package:flutter/material.dart';
import 'package:task/config/config.dart';
import 'package:task/models/models.dart';
import 'package:task/screens/profile_screen.dart';
import 'package:task/services/api.dart';

class LoginScreen extends  StatefulWidget {
 final String name;
  LoginScreen({this.name});

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<LoginScreen>
with SingleTickerProviderStateMixin {
  Karma karma=Karma();
  @override
  
  void initState() { 
    super.initState();
    //print(widget.name);
    _getData();
  }
  _getData()async{
    print(config['BASE_URL']);
    
    karma=Karma.fromJson(await Api.getRequest(config['BASE_URL']));
    //print(karma.search[0].id);
     //print(karma.search[0].data);

  }
  Widget build(BuildContext context) {
    TextEditingController controller2 = TextEditingController();
     TextEditingController controller9 = TextEditingController();
   
    return Scaffold(
    body: Column(
      children: <Widget>[
           Container(
            
            width: 500,height: 250,
           child:Card(color: Colors.orange[700],shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(500.0),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Icon(Icons.all_inclusive),
                    Row(children: <Widget>[
                       Padding(padding: EdgeInsets.all(20),),
                    Text(
                     'karma drive',style: TextStyle(color:Colors.white,fontFamily: 'open sans',fontSize: 20),
              ),
               Padding(padding: EdgeInsets.all(50),),
              RaisedButton(
                child: Center(
                                 child: Text("My Drive",style: TextStyle(color: Colors.black),),
                                 
                               ),
                               color: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => ProfileScreen(name: controller2.text)));
                },
              )
             ],),
             Container(width: 200,height: 30,color: Colors.white,
                          child: TextField(
                        controller: controller9,
                         decoration: InputDecoration(
                            hintText: "search here",
                          ),
               ),
             ),
                  ],
                ),
              ),),
              Center(
                child: Container(width: 80,height: 30,
                  child: RaisedButton(
                             child: Center(
                               child: Text("logout"),
                               
                             ),
                             color: Colors.lightGreen,
                             
                             onPressed: (){
                           Navigator.pop(context,MaterialPageRoute);
                             
                  
                              },
                ),
                ),
              )
       ], ),

    );
  }
}