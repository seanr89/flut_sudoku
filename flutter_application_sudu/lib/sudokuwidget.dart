import 'package:flutter/material.dart';

class SudokuWidget extends StatefulWidget {
  @override
  _SudokuWidgetState createState() => _SudokuWidgetState();
}

class _SudokuWidgetState extends State<SudokuWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sudoku",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        //margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(10),
                        height: 550,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: GridView.builder(
                            itemCount: 9,
                            //shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              mainAxisExtent: 150,
                            ),
                            itemBuilder: (BuildContext, index) {
                              return Container(
                                alignment: Alignment.center,
                                color: Colors.blue,
                                child: Text(
                                  "${index + 1}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            })),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Solve"),
                      ),
                    ))
                  ],
                ))),
      ),
    );
  }
}
