import 'package:flutter/material.dart';

class PatientsDetails extends StatelessWidget {
  const PatientsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Patients details"),
        centerTitle: true,
      ),
      body: const Center(child: Text("View Patients details")),
    );
  }
}
