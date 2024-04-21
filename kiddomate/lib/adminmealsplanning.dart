import 'package:flutter/material.dart';

class mealsplanning extends StatelessWidget {
  mealsplanning({Key? key});

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
                "Meals Planning",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/Group 2700.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Anganwadi ID",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: mealsData.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MealDetailsPage(
                                mealData: mealsData[index],
                              ),
                            ),
                          );
                        },
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
                        title: Text(mealsData[index]['name']),
                        subtitle: Text(mealsData[index]['description']),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add functionality for first button
                              
                               Navigator.push(context, 
             MaterialPageRoute(builder: (context)
                     => upadte(mealData: mealsData[index])));
                            },
                            child: Text("Update meals"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: (

                            ) {
                               Navigator.push(context, 
             MaterialPageRoute(builder: (context)
                     => MealDetailsPage(mealData: mealsData[index])));
      
                              // Add functionality for second button
                            },
                            child: Text("view meals"),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MealDetailsPage extends StatelessWidget {
  final Map<String, dynamic> mealData;
  final List<Map<String, dynamic>> mealsData = [
    {
      'name': 'Rice',
      'description':
          '5kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/pngwing 3.png',
    },
    {
      'name': 'Milk',
      'description':
          '1 ltr',
      'image': 'assets/images/pngwing 4.png',
    },
    {
      'name': 'Bisket',
      'description':
          '5Packet',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/image 8.png',

    },
     {
      'name': 'Rawa',
      'description':
          '5kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/image 7.png',
    },
     {
      'name': 'Tea Powder',
      'description':
          '1kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/image 10.png',
    },
     {
      'name': 'Sugar',
      'description':
          '1kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/png-image 1.png',
    },
  ];

  MealDetailsPage({Key? key, required this.mealData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('send Meal chart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: EdgeInsets.all(16),
            child: ListTile(
              leading: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(mealData['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
              title: Text(mealData['name']),
              subtitle: Text(mealData['description']),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              
              "Items Alotted",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 18
              ),
            ),
          ),
           Expanded(
            child: ListView.builder(
              itemCount: mealsData.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         MealDetailsPage(mealData: mealsData[index]),
                      //   ),
                      // );
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(mealsData[index]['image']),
                    ),
                    title: Text(mealsData[index]['name']),
                   // subtitle: Text(mealsData[index]['description']),
                    trailing:Text(mealsData[index]['description'])
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     // Add functionality for uploading images
          //   },
          //   child: Text("Upload Image"),
          // ),
        ],
      ),
    );
  }
}



class upadte extends StatelessWidget {
  final Map<String, dynamic> mealData;
  final List<Map<String, dynamic>> mealsData = [
    {
      'name': 'Rice',
      'description':
          '5kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/pngwing 3.png',
    },
    {
      'name': 'Milk',
      'description':
          '1 ltr',
      'image': 'assets/images/pngwing 4.png',
    },
    {
      'name': 'Bisket',
      'description':
          '5Packet',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/image 8.png',

    },
     {
      'name': 'Rawa',
      'description':
          '5kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/image 7.png',
    },
     {
      'name': 'Tea Powder',
      'description':
          '1kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/image 10.png',
    },
     {
      'name': 'Sugar',
      'description':
          '1kg',
      // 'description':
      //     'North Fort Gate, Vadakkekotta,\n Kottakakom, Thrippunithura, Kochi,\n Kerala 682301\n+91 1800 425 035',
      'image': 'assets/images/png-image 1.png',
    },
  ];

  upadte({Key? key, required this.mealData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('send Meal chart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: EdgeInsets.all(16),
            child: ListTile(
              leading: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(mealData['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
              title: Text(mealData['name']),
              subtitle: Text(mealData['description']),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              
              "Items Alotted",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 18
              ),
            ),
          ),
           Expanded(
            child: ListView.builder(
              itemCount: mealsData.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         MealDetailsPage(mealData: mealsData[index]),
                      //   ),
                      // );
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(mealsData[index]['image']),
                    ),
                    title: Text(mealsData[index]['name']),
                   // subtitle: Text(mealsData[index]['description']),
                    trailing:Text(mealsData[index]['description'])
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add functionality for uploading images
            },
            child: Text("CONFIRM"),
          ),
        ],
      ),
    );
  }
}



