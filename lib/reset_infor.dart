import 'package:flutter/material.dart';
import 'package:onlinedoctor/auth_service.dart';

class ResetInforPage extends StatefulWidget {
  const ResetInforPage({super.key});

  @override
  State<ResetInforPage> createState() => _ResetInforPageState();
}

class _ResetInforPageState extends State<ResetInforPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Infor"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            TextButton(
                onPressed: () {
                  AdminiAuth adminiAuth = AdminiAuth(
                      context: context,
                      email: "kerrywa@ueab.ac.ke",
                      password: "123456");
                  adminiAuth.sendPasswordResetEmail();
                },
                child: const Text("Reset Password"))
          ],
        ),
      ),
    );
  }
}
