import 'package:flutter/material.dart';

class AttendenceUpdate extends StatelessWidget {
  AttendenceUpdate({Key? key});
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
      body: Column(
        children: [
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
                            width: 50,
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
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(border: Border.all()),
                            child: Row(
                              children: [
                                Text(
                                  "1 February\n\n2024\n\nKochi,Kaloor(50 M) ",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text("punch in time\n\nPunch Out Time"),
                                SizedBox(
                                  width: 30,
                                ),
                                Text("\n\n\n09:00\n\n00:00\n\n\nApproved"),
                                // Column(
                                //   children: [
                                //     Text("data")
                                //     ],
                                // )
                              ],
                            ),
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
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                        //SizedBox(height: 20,),
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
                                        SizedBox(height: 65),
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
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("data"),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
