import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {
  const Nextpage({super.key});

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
                "Malavika Raj",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Anganwadi ID: DWMP565t7656",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Children's Full Name ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 23,
                      ),
                      Text(":"),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Malavika Raj ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "Gender ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 109,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "Female ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Date of Birth ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 76,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "01/08/2023 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "House Address ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Suite 706 111\nkunde Hills,\njessicamouth \nSD 64625-352362 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    // "jessicamouth SD 64625-352362 ",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    // ),),
                  ],
                ),
                //  Text(
                //   "jessicamouth SD 64625-352362 ",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //   ),),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Image of the child ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 48,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Birth Certificate ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset("assets/images/Rectangle 1216.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(""),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset("assets/images/Rectangle 1217 (1).png")
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Region ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Hindhu ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Caste ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Nair ,OBC",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Nationality ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "INDIAN ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Parent/Guardian Information:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "Parent/Guardian 1:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "Name ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Das kuttan ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Relationship to\nchild ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Father ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Contact Number ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "8786756443 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Email ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "abc@gmail.com ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Occupation ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Farmer ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Image of the given Guardian :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/Rectangle 1217 (2).png"),
                SizedBox(height: 30),
                Text(
                  "Parent/Guardian Information:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "Parent/Guardian 2:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Name ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Narayani Das ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Relationship to \n child ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Mother ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Contact Number ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "8786756443 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Email ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "abdfdgc@gmail.com ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Occupation ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Governament job ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Image of the given Guardian :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/Rectangle 1217 (3).png"),

                SizedBox(height: 30),
                Text(
                  "Emergency Contact:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Contact Number ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " 2546213265",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Alternative\nContact Number ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "822365443 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "Medical Information:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Does child have\n any allergies ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " No",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Does child taken\n any vaccinations ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " yes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Does child have\n any existing\nmedical conditions ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " No",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Does child have\n a statementof\nspecial education\nneeds(SEN)? ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      " No",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: NextPage(),
//   ));
// }