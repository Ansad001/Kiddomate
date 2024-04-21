import 'package:flutter/material.dart';
import 'package:kiddomate/adminattendanceupdate.dart';
import 'package:kiddomate/adminchat.dart';
import 'package:kiddomate/adminchildattendence.dart';
import 'package:kiddomate/adminchilddetail.dart';
import 'package:kiddomate/adminmeals.dart';
import 'package:kiddomate/adminmealsplanning.dart';

class adminhome extends StatefulWidget {
  var name;
  var img;
  adminhome({super.key, this.name, this.img});

  @override
  State<adminhome> createState() => _workerhomeState();
}

class _workerhomeState extends State<adminhome> {
  void tapped(int index) {
    if (index == 0) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => AttendenceUpdate())));
    }
    if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => ChildrenAttendenceUpdate())));
    }
    if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => childdetails())));
    }
    if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => mealsupdate())));
    }
    if (index == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => chats())));
    }
    if (index == 5) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => mealsplanning())));
    }
  }

  var name = [
    'Attendence Update',
    'Childrens Attendence\NUpdate',
    'Childrens Details',
    'Meals Update',
    'Chat',
    'Meals Planing'
  ];
  var image = [
    "assets/images/Group 2546.png",
    "assets/images/Group 2543.png",
    "assets/images/Group 2544.png",
    "assets/images/Group 2726.png",
    "assets/images/Group 2552.png",
    "assets/images/Group 2556.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 20,
          child: Container(
            child: Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                Icon(Icons.notification_add),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.50,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 16.0,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => tapped(index),
              child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                borderOnForeground: true,
                child: Column(children: [
                  Expanded(
                    child: SizedBox(
                      child: Stack(children: [
                        Positioned(
                          top: 30,
                          bottom: 50,
                          left: 60,
                          right: 60,
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 20,
                          right: 20,
                          child: Text(
                            textAlign: TextAlign.center,
                            name[index],
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ]),
              ),
            );
          },
          itemCount: image.length,
        ),
      ),
    );
  }
}
