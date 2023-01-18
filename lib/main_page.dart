// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'nav_drawer.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 25, 32, 1),
      drawer:NavDrawer() ,
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(24, 25, 32, 1),
        title: Text('Chats'),
        /*leading:IconButton(
          onPressed: (() {
            
          }),
          icon: Icon(Icons.menu,color: Colors.grey[500]),
        ) ,*/
        
        actions: <Widget>[
          IconButton(onPressed: (){
          },
           icon: Icon(Icons.people_alt_rounded,color: Colors.grey[500],))
           
        ],
      ),

        

      body: Column(children: [
        SizedBox(height: 10,),
        Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 42, 52, 1),
                    border: Border.all(color: Color.fromRGBO(36, 37, 38, 1)),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      //controller: pass_controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle:TextStyle(color:Colors.white)
                      ),
                      style: TextStyle(color: Colors.white),
                      
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),

        
        Padding(
          padding: const EdgeInsets.only(left:15.0),
          child:
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
           Row(
            children: [
                  for(int i=0;i<10;i++)
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar.webp'),
                        radius: 32,
                      ),
                    )
                ],
          ),
        )
        ),
        SizedBox(height: 20,),
        
        Column(
          children: [
            for (int i=0;i<5;i++)
              Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 25),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.webp'),
                    radius: 32,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20,left: 0),
                        child: Text("Sender username",style: TextStyle(color: i%2==0?Colors.grey[500]:Colors.white ,fontWeight: FontWeight.bold,fontSize:18 ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2,left: 10),
                        child: Text("username:message here  ",style: TextStyle(color: i%2==0?Colors.grey[500]:Colors.white,fontWeight: FontWeight.w500,fontSize:14 ),),
                      )
                    ],
                  )
                  
                    
                ],
              ),
            )
          ],
        )

      ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SizedBox(
          height: 50,
          width: 50,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: (){
                showModalBottomSheet<void>(context: context, 
                builder:(BuildContext context ){
                  return SizedBox(
                    height: 2000,
                    child:DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(24, 25, 32, 1),
                      ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 25,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(37, 42, 52, 1),
                                border: Border.all(color: Color.fromRGBO(36, 37, 38, 1)),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: TextField(
                                  //controller: pass_controller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Group name',
                                    hintStyle:TextStyle(color:Colors.white)
                                  ),
                                  style: TextStyle(color: Colors.white),  
                      
                    ),
                  ),
                ),
              ),
                          
                        ],
                      ),
                    ),
                    )
                  );
                }
                
                );
              },
              backgroundColor: Color.fromRGBO(84, 104, 255,1),
              child: Icon(Icons.add),
            ),
          ),
        )
      ),
    );
  }
}