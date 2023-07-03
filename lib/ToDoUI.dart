import 'dart:html';

import 'package:flutter/material.dart';



class ToDoUI extends StatefulWidget {
  const ToDoUI({super.key});

  @override
  State<ToDoUI> createState() => _ToDoUIState();
}

class _ToDoUIState extends State<ToDoUI> {
void showalertdialog(){
  showDialog(context: context,
   builder: (context)=>AlertDialog(
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0
    ),
    ),
    title: Text("Add Text",
    ),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        TextField(
          autofocus: true ,
          style: TextStyle(fontSize: 18.0,fontFamily:"Raleway"
          ),
        ),
        Padding(padding: EdgeInsets.only(top:10.0
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton (onPressed: (){},
            child:Text("Add",style: TextStyle(fontSize: 18.0,fontFamily: "Raleway"),
            ), 
            ),
          ]),
        )
      ],
    ),
  ));
}

  Widget mycard(String task){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0
      ),

      child: Container(
        padding: EdgeInsets.all(5.0),

        child: ListTile(
          title: Text("$task",style: TextStyle(fontSize: 18,fontFamily: "Raleway"
          ),
          ),
          onLongPress: (){
            print("Should get Deleted");
          },
        )
        ,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
 showalertdialog()        ;
      },
      child:Icon(Icons.add,color: Colors.white,
      ),
      backgroundColor: Colors.purple,
      ),
      appBar: AppBar(
        title: Text("My Tasks ",style: TextStyle(fontFamily: "Raleway",fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
        body:SingleChildScrollView(child: Column(children: [  
          mycard("Daily job"),

          mycard("Flutter work"),
          mycard("Problem solving"),
          mycard("Family time") ,

        ]),)
    );
  }
}