import 'package:flutter/material.dart';
import 'package:msptask2/screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  int counter = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("screen1" ,
        style: TextStyle(
          fontSize: 25.0,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${counter}"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextButton(
                onPressed: (){
                setState((){
                  counter++;
                });
              }, child: Text("+"),),
              SizedBox(width: 10,),
              TextButton(onPressed: (){
                setState((){
                  counter-- ;
                });
              }, child: Text("-"),),

            ],
          ),
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            setState((){
              Navigator.push(context, MaterialPageRoute(builder:(_)=> screen2(count: counter)),);
            });

          }, child: Text("screen2"))


        ],
      ),

    );
  }
}
