import 'package:flutter/material.dart';

class Myattendencehistory extends StatelessWidget {
  const Myattendencehistory({super.key});

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
            Text("My Attendence History",style: TextStyle(fontWeight: FontWeight.bold),),SizedBox(height: 30,)],
        ),
        
        ),
        ),
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(
                            Icons.date_range,
                            color: Color.fromARGB(235, 136, 136, 124),
                          ),
                          labelText: '',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(
                            Icons.date_range,
                            color: Color.fromARGB(235, 165, 165, 153),
                          ),semanticCounterText: "fcwvd",
                          labelText: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Change this to your desired number of items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        title: Text('January'),
                        subtitle: Text("2024"),
                        onTap: () {
                          Navigator.push(context, 
                           MaterialPageRoute(builder: (context)
                            =>Attendencedetails()));
                          // Handle list item tap if needed
                        },trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Attendencedetails extends StatelessWidget {
  const Attendencedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Details'),
      ),
      body:Column(
        children: [
          Align(alignment: Alignment.center,),SizedBox(height: 40,),
          Image.asset("assets/images/Group 2640.png"),
          SizedBox(
            height: 40,
          ),
          Text("Morning attendance will be recorded between 9:30 AM and 10:00 AM, while afternoon attendance will be registered between 1:30 PM and 2:00 PM. Any sign-in occurring after the specified times will not be logged")
        ],
      ) ,
      );
    
  }
}