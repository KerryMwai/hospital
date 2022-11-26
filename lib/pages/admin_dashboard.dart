import 'package:flutter/material.dart';

import 'package:onlinedoctor/pages/diseases/add_category.dart';
import 'package:onlinedoctor/pages/diseases/add_disease.dart';

import 'package:onlinedoctor/pages/diseases/edit_disease.dart';
import 'package:onlinedoctor/pages/diseases/view_disease.dart';
import 'package:onlinedoctor/pages/doctors/add_doctor.dart';
import 'package:onlinedoctor/pages/doctors/delete_doctor.dart';
import 'package:onlinedoctor/pages/doctors/view_doctor.dart';
import 'package:onlinedoctor/pages/patients/view_patient_details.dart';
import 'package:onlinedoctor/pages/patients/view_patient_feedback.dart';
import 'package:onlinedoctor/widgets/custom_sized_box.dart';

import 'diseases/customscrolview.dart';
import 'drawerpages/navigation_drawer.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Builder(builder: (context) {
          return InkWell(
              onTap: (() => Scaffold.of(context).openDrawer()),
              child: const Text("Admin Dashboard"));
        }),
        centerTitle: true,
      ),
      body: Column(children: [
        CustomSizedBox(
          heightMod: 0.04,
        ),
        Wrap(runSpacing: 10, spacing: 10, children: [
          Container(
              padding: const EdgeInsets.all(10),
              width: 170,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.pink),
              child: Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  const Text(
                    "Doctors Section",
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddDoctor()));
                    },
                    color: Colors.grey,
                    child: const Text(
                      "Add Doctor",
                      style: TextStyle(
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.6),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewDoctors()));
                    },
                    color: Colors.grey,
                    child: const Text(
                      "View Doctors",
                      style: TextStyle(
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.6),
                    ),
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(10),
              width: 175,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  const Text(
                    "Diseases Section",
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddDisease()));
                    },
                    color: Colors.grey,
                    child: const Text(
                      "Add Disease",
                      style: TextStyle(
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.6),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewDisease()));
                    },
                    color: Colors.grey,
                    child: const Text(
                      "View Diseases",
                      style: TextStyle(
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.6),
                    ),
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 60,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange),
              child: Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  const Text(
                    "Patients Section",
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PatientsDetails()));
                    },
                    color: Colors.grey,
                    child: const Text(
                      "View Patient",
                      style: TextStyle(
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.6),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PatientsFeedback()));
                    },
                    color: Colors.grey,
                    child: const Text(
                      "View Patient's Feedback",
                      style: TextStyle(
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.6),
                    ),
                  ),
                ],
              )),
        ]),
      ]),
      drawer: const NavigationDrawer(),
    );
  }
}
