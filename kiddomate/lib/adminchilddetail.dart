import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kiddomate/adminnextpage.dart';

class childdetails extends StatefulWidget {
  const childdetails({super.key});

  @override
  State<childdetails> createState() => _childdetailsState();
}

class _childdetailsState extends State<childdetails> {
  final CollectionReference Children =
      FirebaseFirestore.instance.collection('Children');
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
      body: StreamBuilder(
        stream: Children.snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot Childrensnap =
                      snapshot.data?.docs[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 15,
                                  blurStyle: BlurStyle.outer),
                            ],
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        height: 80,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            child: Text(Childrensnap['group']),
                          ),
                          title: Text(Childrensnap['name']),
                          subtitle: Text(Childrensnap['phone']),
                        )),
                  );
                });
          }

          return Container();
        },
      ),
    );
  }
}
