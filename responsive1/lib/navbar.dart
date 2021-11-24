import 'package:flutter/material.dart';
class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavBar();
        } else if (constraints.maxWidth > 8000 ) {
          return IphoneNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget{
  @override 
  Widget build(BuildContext context)
  {
    return SafeArea(
      minimum: const EdgeInsets.all(15.0),
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
       children: <Widget>[
          Text(
            'in Landscape Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Text(
                 'Home',
                 style: TextStyle(
                   fontSize: 20,
                  
                   fontWeight: FontWeight.bold,
                   color:Colors.green),
                 ),
                 SizedBox(
                   width: 20,
                 ),
                 Text(
                 'Contact',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color:Colors.green),
                 ),
                 SizedBox(
                   width: 20,
                 ),
                 
             ],
           )
        ],      
      ),     
      );
      
  }
}
class MobileNavBar extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container(
      child:SafeArea(
      minimum: const EdgeInsets.all(15.0),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget>[
         Text(
            'Welcome ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30),
           ),
            SizedBox(
                   width: 20,
                 ),
          Row(
              children: <Widget>[
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 30, 
                ),
              ), 
               SizedBox(
                   width: 20,
                 ), 
              Text(
                '',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 30, 
                ),
              ),  
               SizedBox(
                   width: 20,
                 ),               
                 
            ],
            
          ), 
       ],
       ),
       
      )
    );
  }
}
class IphoneNavBar extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Responsive iphonePage',
            style:TextStyle(color: Colors.indigo)

          )
        ],
      ),   
    );
  }
}