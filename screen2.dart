import 'package:flutter/material.dart';
class screen2 extends StatefulWidget {
  int count = 0;
  screen2({Key? key ,required this.count})  : super(key: key);


  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text("screen2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${widget.count}"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextButton(
                onPressed: (){
                  setState((){
                    widget.count++;
                  });
                }, child: Text("+"),),
              SizedBox(width: 10,),
              TextButton(onPressed: (){
                setState((){
                  widget.count-- ;
                });
              }, child: Text("-"),),

            ],
          ),
        ],
      ),


    );
  }
}
