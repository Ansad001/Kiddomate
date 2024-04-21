import 'package:flutter/material.dart';

class addchild extends StatelessWidget {
  const addchild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
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
                "Add Child Information",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   "Anganwadi ID:",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 10),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     hintText: 'Enter Anganwadi ID',
            //   ),
            // ),
            SizedBox(height: 20),
            Text(
              "Children's Full Name:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Full Name',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Gender:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('Male'),
                SizedBox(width: 20),
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('Female'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Date of Birth:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Date of Birth',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "House Address:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter House Address',
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Image of the child:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement image upload functionality
              },
              child: Text('Upload Image'),
            ),
            SizedBox(height: 20),
            Text(
              "Upload Birth Certificate",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement image upload functionality
              },
              child: Text('Upload Image'),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            Text(
              "Region:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Region',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Caste:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Caste',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Nationality:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Nationality',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Parent/Guardian Information:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Parent/Guardian 1:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Name:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Relationship to Child:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Relationship',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Contact Number:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Contact Number',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Email:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Email',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Occupation:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Occupation',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Parent/Guardian 2:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Name:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Relationship to Child:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Relationship',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Contact Number:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Contact Number',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Email:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Email',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Occupation:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Occupation',
              ),
            ),
            SizedBox(height: 20),
            // Other fields...
            Text(
              "Medical Information:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Does child have any allergies?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('Yes'),
                SizedBox(width: 20),
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('No'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Does child have taken any vaccinations?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('Yes'),
                SizedBox(width: 20),
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('No'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Does child have any existing medical conditions?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('Yes'),
                SizedBox(width: 20),
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('No'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Does child have a statement of special education needs (SEN)?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('Yes'),
                SizedBox(width: 20),
                Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    // Handle checkbox state change
                  },
                ),
                Text('No'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Implement form submission functionality
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    ));
  }
}
