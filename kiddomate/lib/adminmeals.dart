import 'package:flutter/material.dart';

class mealsupdate extends StatelessWidget {
  // String? mealData;
  mealsupdate({Key? key});

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
                  "Meals Update",
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
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child:
                          // ExpansionTile(
                          // title:
                          ListTile(
                              leading: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image:
                                        AssetImage(mealsData[index]['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              subtitle: Text(mealsData[index]['description']),
                              trailing: Column(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {}, child: Text("data")),
                                ],
                              ) // trailing: Icon(Icons.arrow_forward_ios),
                              ),
                      // children: <Widget>[SizedBox(height: 40,),
                      //ElevatedButton(onPressed: (){}, child: Text("data"))
                      // ]
                    );
                  }))
        ]));
  }
}
