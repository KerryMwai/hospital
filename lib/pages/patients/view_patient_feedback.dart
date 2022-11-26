import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onlinedoctor/widgets/infro.dart';

class PatientsFeedback extends StatefulWidget {
  const PatientsFeedback({super.key});

  @override
  State<PatientsFeedback> createState() => _PatientsFeedbackState();
}

class _PatientsFeedbackState extends State<PatientsFeedback> {
  final user = FirebaseAuth.instance.currentUser;
  CollectionReference collectionReferenceMessages =
      FirebaseFirestore.instance.collection("messages");
  String uid = "";
  List<String> messagessend = [];
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Patients Feedback"),
          centerTitle: true,
        ),
        body: Container(
          height: size.height - 50,
          width: size.width - 10,
          margin: const EdgeInsets.only(
            top: 10,
          ),
          padding: const EdgeInsets.only(bottom: 50),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:
                    List.generate(messages[0]['messages'].length, (index) {
                  if (index == 0) {
                    return DateChip(
                      date: DateTime(2021, 5, 7),
                      color: const Color(0x558AD3D5),
                    );
                  } else if (messages[0]['messages'][index]['ismine']) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("images/16.jpg"),
                          ),
                          BubbleSpecialOne(
                            text:
                                "${messages[0]['messages'][index]['message']}",
                            isSender: false,
                            color: Colors.purple.shade100,
                            textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.purple,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BubbleSpecialThree(
                            text:
                                "${messages[0]['messages'][index]['message']}",
                            color: const Color(0xFF1B97F3),
                            tail: true,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("images/18.jpg"),
                          ),
                        ],
                      ),
                    );
                  }
                }),
              ),
            ),
          ),
        ),
        bottomSheet: SizedBox(
          width: size.width - 20,
          height: 120,
          child: MessageBar(
            onTextChanged: (value) {
              message.text = value;
            },
            onSend: (_) {
              messagessend.add(message.text);
            },
            actions: [
              InkWell(
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.green,
                    size: 24,
                  ),
                  onTap: () {
                    for (String mess in messagessend) {
                      print(mess);
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }

  sendMessage(String message) {
    if (user != null) {
      uid = user!.uid;
    }
  }
}
