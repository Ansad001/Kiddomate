import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class ChildrenAttendenceUpdate extends StatelessWidget {
  ChildrenAttendenceUpdate({Key? key});
  final List<Map<String, dynamic>> mealsData = [
    {
      'name': 'Biscuit and Milk',
      'description':
          'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/Rectangle 1219 (1).png',
    },
    {
      'name': 'Kanji and Beans',
      'description':
          'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/Rectangle 1219.png',
    },
    {
      'name': 'Tea and Biscuit',
      'description':
          'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/Rectangle 1219 (1).png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 244, 246, 248),
          automaticallyImplyLeading: false,
          title: SizedBox(
            height: 37,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Color.fromARGB(255, 21, 16, 16),
                ),
                Text(
                  "Attendance Update",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
        body: Column(children: [
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: mealsData.length,
              itemBuilder: (context, index) {
                return Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: ExpansionTile(
                        title: ListTile(
                          leading: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(mealsData[index]['image']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          subtitle: Text(mealsData[index]['description']),
                          // trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Todays History',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "1 February\n2024 ",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              // Text("punch in time\n\nPunch Out Time"),
                              // SizedBox(
                              //   width: 40,
                              // ),
                              // Text("09:00\n\n00:00\n\n\nApproved"),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.calendar_month),
                                              Text(
                                                "History",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'From:',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              suffixIcon: Icon(
                                                Icons.date_range,
                                                color: Color.fromARGB(
                                                    235, 136, 136, 124),
                                              ),
                                              labelText: 'DD/MM/YY',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                      height: 30,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            'To:',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          TextField(
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              suffixIcon: Icon(
                                                Icons.date_range,
                                                color: Color.fromARGB(
                                                    235, 165, 165, 153),
                                              ),
                                              semanticCounterText: "fcwvd",
                                              labelText: 'DD/MM/YY',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //SizedBox(height: 10),
                                SizedBox(height: 20),
                                EasyDateTimeLine(
                                  initialDate: DateTime.now(),
                                  onDateChange: (selectedDate) {
                                    // Handle date change if needed
                                  },
                                  headerProps: const EasyHeaderProps(
                                    monthPickerType: MonthPickerType.switcher,
                                    dateFormatter: DateFormatter.fullDateDMY(),
                                  ),
                                  dayProps: const EasyDayProps(
                                    dayStructure: DayStructure.dayStrDayNum,
                                    activeDayStyle: DayStyle(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff3371FF),
                                            Color(0xff8426D6),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    "Morning Attendance",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Expanded(
                                //   child: ListView.builder(
                                //     itemCount: 10, // Adjust the number of items as needed
                                //     itemBuilder: (context, index) {
                                //       return  Padding(
                                //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                // child: Card(
                                //   elevation: 3,
                                //   shape: RoundedRectangleBorder(
                                //     borderRadius: BorderRadius.circular(15),
                                //   ),
                                //child:
                                ListTile(
                                  leading: Image.asset(
                                    'assets/images/Ellipse 1282.png', // Replace with your image path
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text('Malavika Raj '),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          // Handle present button tap
                                        },
                                        icon: Icon(Icons.check_circle_outline),
                                        color: Colors.green,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.cancel_outlined),
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    // Handle list item tap
                                  },
                                )
                              ])
                        ]));
              },
            ),
          ),
//           SizedBox(
//             height: 30,
//           ),
// //                           Row(
// //                             children: [
// //                               Text('Select:'),
// //                               SizedBox(width: 10),
// //                               CustomRadioButton(
// //                                 value: true,
// //                                 groupValue: false,
// //                                 onChanged: (value) {},
// //                               ),
// //                               Text('Present'),
// //                               SizedBox(width: 10),
// //                               CustomRadioButton(
// //                                 value: false,
// //                                 groupValue: false,
// //                                 onChanged: (value) {},
// //                               ),
// //                               Text('Absent'),
// //                             ],
// //                           ),
// //                           SizedBox(height: 10),
// //                           Expanded(
// //                             child: ListView.builder(
// //                               itemCount: 10, // Adjust the number of items as needed
// //                               itemBuilder: (context, index) {
// //                                 return Padding(
// //                                   padding: const EdgeInsets.symmetric(
// //                                       horizontal: 20, vertical: 10),
// //                                   child: Card(
// //                                     elevation: 3,
// //                                     shape: RoundedRectangleBorder(
// //                                       borderRadius: BorderRadius.circular(15),
// //                                     ),
// //                                     child: ListTile(
// //                                       leading: Image.asset(
// //                                         'assets/images/Ellipse 1282.png',
// //                                         width: 50,
// //                                         height: 50,
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                       title: Text('Malavika Raj '),
// //                                       trailing: Icon(Icons.arrow_forward_ios),
// //                                       onTap: () {
// //                                         Navigator.push(
// //                                           context,
// //                                           MaterialPageRoute(
// //                                               builder: (context) => Nextpage()),
// //                                         );
// //                                       },
// //                                     ),
// //                                   ),
// //                                 );
// //                               },
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class CustomRadioButton extends StatelessWidget {
// //   final bool value;
// //   final bool groupValue;
// //   final ValueChanged<bool>? onChanged;

// //   const CustomRadioButton({
// //     required this.value,
// //     required this.groupValue,
// //     this.onChanged,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: () {
// //         if (onChanged != null) {
// //           onChanged!(value);
// //         }
// //       },
// //       child: Container(
// //         width: 24,
// //         height: 24,
// //         decoration: BoxDecoration(
// //           shape: BoxShape.circle,
// //           border: Border.all(color: Colors.black),
// //         ),
// //         child: value
// //             ? Center(
// //                 child: Container(
// //                   width: 12,
// //                   height: 12,
// //                   decoration: BoxDecoration(
// //                     shape: BoxShape.circle,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               )
// //             : null,
// //       ),
// //     );
// //   }
// // }

// // class Nextpage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Next Page'),
// //       ),
// //       body: Center(
// //         child: Text('This is the next page'),
// //       ),
//                         ])
          // ])
          //  );
        ]));
  }
}
