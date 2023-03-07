import 'package:flutter/material.dart';

class screen extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        leading:
        Icon(Icons.arrow_back ,
          size: 15.0,
        ),
        actions: [
          Icon(Icons.settings ,
          size: 15.0,
          ),
        ],




      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          children: [
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Edit Profile' ,
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 30.0 ,
                ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 75.0,

                        backgroundImage: NetworkImage('https://th.bing.com/th/id/R.de6ff49c0041d01626f222b77e8c5240?rik=2wWxz%2b8GXK%2bVCA&pid=ImgRaw&r=0'),
                      ),
                      Positioned(
                      bottom: 0,
                          right: -25,
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 5.0,
                            fillColor: Colors.blue,
                            child: Icon(Icons.edit,
                            size: 35,),
                          //  padding: EdgeInsets.all(25.0),
                            shape: CircleBorder(),
                          )),

                    ],

                  ),
                ),
              ),
              
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name' ,
                border: UnderlineInputBorder() ,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              obscureText: true,

              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: 'password' ,
                border: UnderlineInputBorder() ,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.remove_red_eye),
                labelText: 'Location' ,
                border: UnderlineInputBorder() ,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(

                  child: TextButton(onPressed: (){
                    print('cancel pressed');
                  }, child: Text('cancel',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ) ,
                    style: ButtonStyle(
                        backgroundColor:  MaterialStateProperty.all<Color>(Colors.black12),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),


                            )
                        )
                    ),

                  ),
                ),
                SizedBox(width: 10.0,),
                Container(


                  child: TextButton(onPressed: (){
                    print('cancel pressed');
                  }, child: Text('SAVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  ) ,
                    style: ButtonStyle(

                      backgroundColor:  MaterialStateProperty.all<Color>(Colors.green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),


                            )
                        )
                    ),

                  ),
                ),

              ],
            ),






          ],
        ),
      ) ,

    );



  }


}