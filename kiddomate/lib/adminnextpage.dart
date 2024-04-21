import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Adminnextpage extends StatefulWidget {
  const Adminnextpage({super.key});

  @override
  State<Adminnextpage> createState() => _AdminnextpageState();
}

class _AdminnextpageState extends State<Adminnextpage> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('donor');
  final txtcntrl1 = TextEditingController();
  final txtcntrl2 = TextEditingController();

  final List<String> bldgrp = ["A+", "A-", "B", "B+", "O+", "O", "AB+", "AB-"];
  String selectedgrp = "";

  void adddonor() {
    final data = {
      'name': txtcntrl1.text,
      'group': selectedgrp,
      'phone': txtcntrl2.text
    };
    donor.add(data);
  }

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: txtcntrl1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Name"),
                  hintText: "Enter name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: txtcntrl2,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Number"),
                  hintText: "Enter Phone number"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DropdownButtonFormField(
                decoration: InputDecoration(label: Text("select blood group")),
                items: bldgrp
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: ((value) {
                  selectedgrp = value.toString();
                })),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                adddonor();
                Navigator.pop(context);
              },
              child: Text("submit"),
              style: ButtonStyle(
                  minimumSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50))),
            ),
          )
        ],
      ),
    );
  }
}
