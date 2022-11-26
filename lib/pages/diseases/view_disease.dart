import 'package:flutter/material.dart';
import 'package:onlinedoctor/pages/diseases/customscrolview.dart';

import 'edit_disease.dart';

class ViewDisease extends StatelessWidget {
  const ViewDisease({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Diseases"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(
            top: 20.0, left: 10.0, right: 10.0, bottom: 15.0),
        child: Table(
            border: const TableBorder(
              top: BorderSide(color: Colors.black, width: 2),
              left: BorderSide(color: Colors.black, width: 2),
              right: BorderSide(color: Colors.black, width: 2),
              bottom: BorderSide(color: Colors.black, width: 2),
              verticalInside: BorderSide(color: Colors.black),
              horizontalInside: BorderSide(color: Colors.black),
            ),
            children: [
              const TableRow(children: [
                TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 20, fontFamily: "Roboto"),
                    ),
                  ),
                )),
                TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Category",
                      style: TextStyle(fontSize: 20, fontFamily: "Roboto"),
                    ),
                  ),
                )),
                TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Action",
                      style: TextStyle(fontSize: 20, fontFamily: "Roboto"),
                    ),
                  ),
                )),
              ]),
              TableRow(children: [
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Corona",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Respiratory",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                TableCell(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CustomScroviewPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const EditDisease(),
                              ),
                            );
                          },
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ]),
              TableRow(children: [
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Cholera",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Water borne",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                TableCell(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CustomScroviewPage(),
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const EditDisease(),
                              ),
                            );
                          },
                          child: const Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CustomScroviewPage(),
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const EditDisease(),
                              ),
                            );
                          },
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ]),
              TableRow(children: [
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Malaria",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Tropical",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                TableCell(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CustomScroviewPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const EditDisease(),
                              ),
                            );
                          },
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ]),
              TableRow(children: [
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Tuberchlosis",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Respiratory",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                TableCell(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CustomScroviewPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const EditDisease(),
                              ),
                            );
                          },
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ]),
              TableRow(children: [
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Gonorrehoea",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "STI",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                TableCell(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CustomScroviewPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const EditDisease(),
                              ),
                            );
                          },
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ]),
              TableRow(children: [
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Diabetes",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                const TableCell(
                    child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Nutritional",
                      style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                    ),
                  ),
                )),
                TableCell(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CustomScroviewPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(26)),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const EditDisease(),
                              ),
                            );
                          },
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Roboto"),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ]),
            ]),
      ),
    );
  }
}
