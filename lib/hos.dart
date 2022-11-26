import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HospitalsPage extends StatefulWidget {
  const HospitalsPage({super.key});

  @override
  State<HospitalsPage> createState() => _HospitalsPageState();
}

class _HospitalsPageState extends State<HospitalsPage> {
  final CollectionReference _products =
      FirebaseFirestore.instance.collection("hospital");

  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController levelController = TextEditingController();
  TextEditingController doctorsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hospitals"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: StreamBuilder(
            stream: _products.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ListView.builder(
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot documentSnapshot =
                          streamSnapshot.data!.docs[index];
                      return Table(
                          border: const TableBorder(
                            top: BorderSide(color: Colors.black, width: 2),
                            left: BorderSide(color: Colors.black, width: 2),
                            right: BorderSide(color: Colors.black, width: 2),
                            bottom: BorderSide(color: Colors.black, width: 2),
                            verticalInside:
                                BorderSide(color: Colors.black, width: 2),
                            horizontalInside: BorderSide(color: Colors.black),
                          ),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TableCell(
                                    child: Text(
                                  documentSnapshot['name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TableCell(
                                    child: Text(
                                  documentSnapshot['location'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TableCell(
                                    child: Text(
                                  documentSnapshot['level'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TableCell(
                                    child: Text(
                                  documentSnapshot['doctors'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14),
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TableCell(
                                    child: IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                    content: Text(
                                                      "Do you want to delete the doctor ?",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.red[400],
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                          onPressed: () async {
                                                            await documentSnapshot
                                                                .reference
                                                                .delete()
                                                                .then((value) =>
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop());
                                                          },
                                                          child: const Text(
                                                              "Yes")),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child:
                                                              const Text("No")),
                                                    ],
                                                  ));
                                        },
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ))),
                              )
                            ]),
                          ]);
                    });
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getDialogForm();
        },
        backgroundColor: Colors.brown[400],
        child: const Center(
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future getDialogForm() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text("Hospital Infor"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    autofocus: true,
                    controller: nameController,
                    decoration: const InputDecoration(hintText: "Name"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    autofocus: true,
                    controller: locationController,
                    decoration: const InputDecoration(hintText: "Location"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    autofocus: true,
                    controller: levelController,
                    decoration: const InputDecoration(hintText: "Level"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    autofocus: true,
                    controller: doctorsController,
                    decoration: const InputDecoration(hintText: "Doctors"),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () {
                    if (nameController.text.isEmpty ||
                        locationController.text.isEmpty ||
                        levelController.text.isEmpty ||
                        doctorsController.text.isEmpty) {
                      return;
                    } else {
                      addDoctorToFirebase(
                          name: nameController.text,
                          location: locationController.text,
                          level: levelController.text,
                          doctors: doctorsController.text);
                      Navigator.of(context).pop();
                    }
                    nameController.clear();
                    locationController.clear();
                    levelController.clear();
                    doctorsController.clear();
                  },
                  child: const Text("Add"))
            ],
          ));

  addDoctorToFirebase(
      {required name,
      required location,
      required level,
      required doctors}) async {
    await _products.add({
      "name": name,
      "location": location,
      "level": level,
      "doctors": doctors
    });
  }
}
