import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewDoctors extends StatefulWidget {
  const ViewDoctors({super.key});

  @override
  State<ViewDoctors> createState() => _ViewDoctorsState();
}

class _ViewDoctorsState extends State<ViewDoctors> {
  final CollectionReference _doctors =
      FirebaseFirestore.instance.collection("doctors");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("View Doctor"),
          centerTitle: true,
        ),
        body: StreamBuilder(
            stream: _doctors.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: ((context, index) {
                      final DocumentSnapshot doctorSnapshot =
                          snapshot.data!.docs[index];
                      return Card(
                        color: Colors.grey,
                        margin: const EdgeInsets.all(20.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(doctorSnapshot['d_id']),
                              Text(doctorSnapshot['password'])
                            ],
                          ),
                        ),
                      );
                    }));
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}
