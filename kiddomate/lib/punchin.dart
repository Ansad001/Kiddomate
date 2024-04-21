import 'package:flutter/material.dart';

class Punchin extends StatelessWidget {
  const Punchin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 244, 246, 248),
      automaticallyImplyLeading: false,
        title: SizedBox(
        height: 37,
        child: Row(
          children:
           [ IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Color.fromARGB(255, 21, 16, 16),
                        ),
            Text("Punch in",style: TextStyle(fontWeight: FontWeight.bold),),SizedBox(height: 30,)],
        ),
        
        
        ),
        ),
        
        body: Column(
          children: [Align(alignment: Alignment.center,),SizedBox(
            height: 50,
          ),
            Image.asset("assets/images/Daco_6042130 1.png"),
            SizedBox(height: 30,),
            Text("Please Punch into mark the Attendence from ",style: TextStyle(fontWeight: FontWeight.bold),),
            Text(" your registered location",style: TextStyle(fontWeight: FontWeight.bold)) ,
            SizedBox(height: 50,),
            Image.asset("assets/images/Group 2559.png")
          ],
        ),
        
        );
        
  }
}