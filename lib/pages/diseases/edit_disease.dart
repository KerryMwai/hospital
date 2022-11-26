import 'package:flutter/material.dart';

class EditDisease extends StatelessWidget {
  const EditDisease({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Disease"),
        centerTitle: true,
      ),
      body: const Center(child: Text("Edit Disease")),
    );
  }
}
