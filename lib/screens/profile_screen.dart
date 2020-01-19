import 'package:flutter/material.dart';

class ProfileScreen extends  StatefulWidget {
 final String name;
  ProfileScreen({this.name});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
   TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  //TextEditingController controller8 = TextEditingController(); 
   bool isSwitched=true;
    return Scaffold(
     
      
      body:Container(
              
              child: SingleChildScrollView(
                              
                 child:Column(
                   children: <Widget>[
                 Container(
            
            width: 500,height: 200,
           child:Card(color: Colors.orange[700],shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(500.0),),
           child: Column(
             children: <Widget>[
              Padding(padding: EdgeInsets.all(20),),
               Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),),
             ],
           ),
                ),
                 ),
                 Center(
           child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Padding(padding: EdgeInsets.all(10),),
                   Row(
                     children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),),
                       Text('Name'),
                      Padding(padding: EdgeInsets.all(80),),
                       Text('phone number'),
                     ],
                   ),
                    Padding(padding: EdgeInsets.all(01),),
                   Row(
                     children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),),
                       Container(width: 150,height: 30,color: Colors.grey[200],
                         child: TextField(
                           controller: controller6,
                       decoration: InputDecoration(
                         
            
                        ),
                         ), ),
                          Padding(padding: EdgeInsets.all(20),),
                         Container(width: 150,height: 30,color: Colors.grey[200],
                         child: TextField(controller: controller7,
                       decoration: InputDecoration(
                         
            
                        ),),
                         ),
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Padding(padding: EdgeInsets.all(10),),
                       Text('Location'),
                      Padding(padding: EdgeInsets.all(80),),
                       Text('Interest'),
                     ],
                   ),
                    Padding(padding: EdgeInsets.all(01),),
                   Row(
                     children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),),
                       Container(width: 150,height: 30,color: Colors.grey[200],
                         child: TextField(
                           controller: controller6,
                       decoration: InputDecoration(
                         
            
                        ),
                         ), ),
                          Padding(padding: EdgeInsets.all(20),),
                         Container(width: 150,height: 30,color: Colors.grey[200],
                         child: TextField(controller: controller7,
                       decoration: InputDecoration(
                         
            
                        ),),
                         ),
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Text('Notifications'),
                       Padding(padding: EdgeInsets.all(20),),
                      Switch(
                        value: isSwitched,
                        onChanged: (value){
                          setState(() {
                            isSwitched=value;
                          });
                        },
                      )
                     ],
                   )
                 ],
             ),
           ),
         ),
                 ],
                 ) ,
     
            
      ///
              ),),
     
   );
  }
}