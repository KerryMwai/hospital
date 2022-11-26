import 'package:flutter/material.dart';

class DeleteDisease extends StatelessWidget {
  const DeleteDisease({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delete Disease"),
        centerTitle: true,
      ),
      body: const Center(child: Text("Delete Disease")),
    );
  }
}
