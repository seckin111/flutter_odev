import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Create.dart';
import 'package:flutter_application_1/screens/listeleme.dart';

import 'screens/sport.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Homepage"),
          backgroundColor: Color.fromARGB(255, 158, 219, 205),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(100)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 40)),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print("button clicked");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Create(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                            ),
                            BoxShadow(
                              color: Colors.red,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "Add Routine",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print("button clicked");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListExercise(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                            ),
                            BoxShadow(
                              color: Colors.red,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "List Routine",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 40)),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print("button clicked");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sport(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                            ),
                            BoxShadow(
                              color: Colors.red,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "Egzersiz Ekle",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print("button clicked");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListExercise(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyan,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(4, 4),
                            ),
                            BoxShadow(
                              color: Colors.red,
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "List Egzersiz",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
