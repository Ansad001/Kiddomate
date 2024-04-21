import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class AttendanceMark extends StatelessWidget {
  const AttendanceMark({Key? key}) : super(key: key);

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
                "Attendence Mark",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 30),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Anganwadi ID DWMP565t7656",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.info_outlined,
                          color: Color.fromARGB(255, 164, 164, 157),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelText: 'Info',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Morning Attendance",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Adjust the number of items as needed
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
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
                            onPressed: () {
                              
                            },
                            icon: Icon(Icons.cancel_outlined),
                            color: Colors.red,
                          ),
                        ],
                      ),
                  onTap: () {
                    // Handle list item tap
                  },
                    ))
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ), 
          // Align(alignment: Alignment.bottomCenter,),
        
          Align(alignment: Alignment.bottomCenter,),
                   Center(
                     child: Container(
                         height: 30,
                         width: 300,
                         decoration: BoxDecoration(
                           border: Border.all(),color: Colors.blue
                         ),
                                     child:ElevatedButton( style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15),backgroundColor: Colors.blue),
                               
                            onPressed: (){}, child: Text("Save"))
                            ),
                   ) ],
        
      ),
    );
  }
}
