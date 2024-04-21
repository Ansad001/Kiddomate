import 'package:flutter/material.dart';
import 'package:kiddomate/childrennxtpage.dart';

class ChildrensDetails extends StatelessWidget {
  const ChildrensDetails({super.key});

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
                "childrens Details",
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
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Adjust the number of items as needed
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Nextpage()),
                            );
                            // Handle list item tap
                          },
                        )));
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // Align(alignment: Alignment.bottomCenter,),

          Align(
            alignment: Alignment.bottomCenter,
          ),
          Center(
            child: Container(
                height: 30,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(), color: Colors.blue),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 15),
                        backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text("Save"))),
          )
        ],
      ),
    );
  }
}
