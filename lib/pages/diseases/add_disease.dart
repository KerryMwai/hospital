import 'package:flutter/material.dart';

import '../../widgets/custom_textfield.dart';

class AddDisease extends StatefulWidget {
  const AddDisease({super.key});

  @override
  State<AddDisease> createState() => _AddDiseaseState();
}

class _AddDiseaseState extends State<AddDisease> {
  TextEditingController diseaseController = TextEditingController();

  TextEditingController diseasecateController = TextEditingController();

  TextEditingController diseasecharacteristicsController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              labelText: "Enter  disease",
              inputControler: diseaseController,
              isObsecureText: false,
              suffixIcon: const Icon(Icons.dangerous),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              labelText: "Enter  Category",
              inputControler: diseasecateController,
              isObsecureText: false,
              suffixIcon: const Icon(Icons.category),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              labelText: "Enter  Characteristics",
              inputControler: diseasecharacteristicsController,
              isObsecureText: false,
              suffixIcon: const Icon(Icons.featured_play_list),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(26)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
