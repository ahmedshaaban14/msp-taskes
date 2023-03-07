import 'package:flutter/material.dart';

import 'buildedItems.dart';

class shopping extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOPPERS"
        ,
        style: TextStyle(
          fontSize: 20.0 ,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 180,
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
                itemBuilder: (context , index)
            {
               return buildedItems();
            },
              separatorBuilder: (context , index){
                return SizedBox(height: 10,
                width: 10,);
              },
            itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
