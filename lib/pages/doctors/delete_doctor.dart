import 'package:flutter/material.dart';

class DeleteDoctor extends StatelessWidget {
  const DeleteDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> characters = [
      'a',
      'e',
      'd',
      'm',
      'h',
      'w',
      'er',
      'xd',
      'gd',
      's',
      'er',
      'op',
      'qa',
      'bc',
      'x',
      'fd',
      'ys',
      'y',
      'vv',
      'mc',
      'we',
      'kl'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Doctor"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.all(10),
            child: Table(
                border: const TableBorder(
                  top: BorderSide(color: Colors.black, width: 2),
                  left: BorderSide(color: Colors.black, width: 2),
                  right: BorderSide(color: Colors.black, width: 2),
                  bottom: BorderSide(color: Colors.black, width: 2),
                  verticalInside: BorderSide(color: Colors.black, width: 2),
                  horizontalInside: BorderSide(color: Colors.black, width: 2),
                ),
                children: List.generate(20, (index) {
                  if (index == 0) {
                    return const TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TableCell(
                            child: Text(
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TableCell(
                            child: Text(
                          "ID",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TableCell(
                            child: Text(
                          "Action",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )),
                      ),
                      // TableCell(child: Text("Kerry Mwai")),
                    ]);
                  } else {
                    return TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(child: Text("Doctor  $index")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                            child: Text(
                                "${index + 3}80${index + 2}94${index + 1}${index}")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCell(
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.redAccent,
                            child: const Text(
                              "Delete",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      // TableCell(child: Text("Kerry Mwai")),
                    ]);
                  }
                }))),
      ),
    );
  }
}
