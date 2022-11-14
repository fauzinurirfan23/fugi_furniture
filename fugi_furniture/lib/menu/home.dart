import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> submenu = ["All", "living", "Bedroom", "Dining Room", "Kitchen", "Bathroom"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children:const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.menu),
                  ),
                  Text('Home'),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.search),
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    width: 180,
                child: Text('Discover the most modern furniture', style: TextStyle(fontSize: 20),),
              ),           
                ],
              ),
              Container(
                        height: 60,
                        child:ListView(
                          scrollDirection: Axis.horizontal,
                          children: submenu.map((country){
                               return box(country, Colors.grey);
                          }).toList(),
                        )
                      ),
                     const  SizedBox(height: 10),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    width: 250,
                child: Text('Recomended Furnitures', style: TextStyle(fontSize: 20),),
              ),           
                ],
              ),
              
    
            ],
            
          ),
        ],
      ),
    );
  }
}


Widget box(String title, Color backgroundcolor){
     return Container(
        margin: EdgeInsets.all(10),
        width: 100,
        
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: backgroundcolor,
        ),
        child: Text(title, style:TextStyle(
                     color: Colors.white,
                     fontSize: 15))
     );
  }
