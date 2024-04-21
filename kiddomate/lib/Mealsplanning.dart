import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
   Meals({super.key});
 final List<Map<String, dynamic>> mealsData = [
    {
      'name': 'Biscuit and Milk',
      'description': '11.00 am Snacks.',
      'image': 'assets/images/meals1.png',
    },
    {
      'name': 'Kanji and Beans',
      'description': '12.30 pm Lunch.',
      'image': 'assets/images/image 6.png',
    },
    {
      'name': 'Tea and Biscuit',
      'description': '3.00 pm Snacks.',
      'image': 'assets/images/meals1.png',
    },
  ];
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
            Text("Meals Planning",style: TextStyle(fontWeight: FontWeight.bold),),SizedBox(height: 30,)],
        ),
        
        ),
        ),
        body: Column(
          children: [ Container(
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Group 2700.png',
                    ),
                    fit: BoxFit.fill),
              ), child: Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Allotted items for this Week',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 241, 239, 239)),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Click here to view        ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: const Color.fromARGB(255, 231, 226, 228)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 60,
          ),
              EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        dateFormatter: DateFormatter.fullDateDMY(),
      ),
      dayProps: const EasyDayProps(
        dayStructure: DayStructure.dayStrDayNum,
        activeDayStyle: DayStyle(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
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
    Expanded(
            child: ListView.builder(
              itemCount: mealsData.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MealDetailsPage(mealData: mealsData[index]),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(mealsData[index]['image']),
                    ),
                    title: Text(mealsData[index]['name']),
                    subtitle: Text(mealsData[index]['description']),
                    trailing: Icon(Icons.arrow_forward_ios),
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

//import 'package:flutter/material.dart';

class MealDetailsPage extends StatelessWidget {
  final Map<String, dynamic> mealData;

  const MealDetailsPage({Key? key, required this.mealData}) : super(key: key);

  @override
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            margin: EdgeInsets.all(16),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(mealData['image']),
              ),
              title: Text(mealData['name']),
              subtitle: Text(mealData['description']),
            ),
          ),
          // Add other details here...
          SizedBox(height: 20,width: 10,),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Upload Images of the discription of the meals to Student to confirm the completion of the update"),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Student to confirm the completion of the update"),
      
          // )
          SizedBox(height: 40,),
           ElevatedButton( style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  ), onPressed: (){}, 
             child: InputDecorator(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.camera_alt),
                 
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8.0),
                 ),
               ),
               child: Text("Upload Image"),
             ),),
        ]
      
        ,
      ),
      
    );
  }
}