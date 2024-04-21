import 'package:flutter/material.dart';
import 'package:kiddomate/Mealsplanning.dart';
import 'package:kiddomate/addchild.dart';
import 'package:kiddomate/adminchat.dart';
import 'package:kiddomate/attendencemark.dart';
import 'package:kiddomate/childrenDetails.dart';
import 'package:kiddomate/myattandance.dart';
import 'package:kiddomate/punchin.dart';

class workerscard extends StatefulWidget {
  var name;
  var img;
  workerscard({super.key, this.name, this.img});

  @override
  State<workerscard> createState() => _workerhomeState();
}

class _workerhomeState extends State<workerscard> {
  void tapped(int index) {
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Punchin())));
    }
    if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => AttendanceMark())));
    }
    if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => ChildrensDetails())));
    }
    if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => addchild())));
    }
    if (index == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => chats())));
    }
    if (index == 5) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => Myattendencehistory())));
    }
    if (index == 6) {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => Meals())));
    }
  }

  var name = [
    'Punch in/ Punch out',
    'Childrens Attendence Sheet',
    'Childrens Details',
    'Add children',
    'Chat',
    'My Attendence History',
    'Meals Planing'
  ];
  var image = [
    "assets/images/Group 2546.png",
    "assets/images/Group 2543.png",
    "assets/images/Group 2544.png",
    "assets/images/Group 2552.png",
    "assets/images/Group 2556.png",
    "assets/images/Group 2546 (1).png",
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
                            fit: BoxFit.scaleDown,
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
