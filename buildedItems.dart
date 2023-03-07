import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buildedItems extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:const EdgeInsets.symmetric(vertical: 20 , horizontal: 20) ,
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white12,
          ),
          child:Image.network("https://th.bing.com/th/id/OIP.3jSSBFB3ViwnkvNXSw8s9gHaHa?w=180&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
        )
      ],
    );
  }
}
