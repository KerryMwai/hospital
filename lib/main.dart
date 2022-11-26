import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onlinedoctor/auth_service.dart';
import 'package:onlinedoctor/pages/admin_dashboard.dart';
import 'package:onlinedoctor/widgets/custom_sized_box.dart';
import 'package:onlinedoctor/widgets/custom_textfield.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Doctor',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
      home: const MyHomePage(title: 'Online Doctor'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController adminId = TextEditingController();
    TextEditingController passwordControler = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
            height: size.height * 0.6,
            child: Column(
              children: [
                const Text(
                  "Enter your details (Admin)\nEmail:test@gmail.com\nPassword:123456",
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
                  labelText: "Enter email",
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
                  onPressed: () async {
                    AdminiAuth adminiAuth = AdminiAuth(
                        context: context,
                        email: adminId.text,
                        password: passwordControler.text);
                    // adminiAuth.createAdmin();
                    // adminiAuth.loginAdmin();
                    if (await adminiAuth.loginAdmin()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AdminDashboard(),
                        ),
                      );
                    }
                  },
                  color: Colors.lightBlue,
                  child: const Text(
                    "Login",
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
    ));
  }
}
