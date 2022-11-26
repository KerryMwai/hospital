import 'package:flutter/material.dart';

class DiseaseCategory extends StatelessWidget {
  const DiseaseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disease Categories"),
        centerTitle: true,
      ),
      body: const Center(child: Text("Disease Categories")),
    );
  }
}
