import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_sized_box.dart';
import '../../widgets/custom_textfield.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({super.key});

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  final CollectionReference _doctors =
      FirebaseFirestore.instance.collection("doctors");
  @override
  Widget build(BuildContext context) {
    TextEditingController adminId = TextEditingController();
    TextEditingController passwordControler = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Doctor"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSizedBox(
              heightMod: 0.26,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              width: size.width - 60,
              height: size.height * 0.43,
              child: Column(
                children: [
                  const Text(
                    "Enter doctor's details",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    labelText: "Enter ID",
                    inputControler: adminId,
                    isObsecureText: false,
                    suffixIcon: const Icon(Icons.card_membership),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    labelText: "Enter password",
                    inputControler: passwordControler,
                    isObsecureText: true,
                    suffixIcon: const Icon(Icons.lock),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      addDoctorToFireBase(
                          id: adminId.text, password: passwordControler.text);
                      adminId.clear();
                      passwordControler.clear();
                    },
                    color: Colors.lightBlue,
                    child: const Text(
                      "Add Doctor",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  addDoctorToFireBase({required id, required password}) {
    _doctors.add({"d_id": id, "password": password});
  }
}
