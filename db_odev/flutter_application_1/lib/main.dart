import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/egzersiz.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';
import 'db/routines.dart';
import 'homepage.dart';

void main() async {
  final isar = await openIsar();
  runApp(
    Provider.value(
      value: isar,
      child: const MyApp(),
    ),
  );
}

Future<Isar> openIsar() async {
  final isar = await Isar.open(
    [RoutinesSchema, EgzersizSchema],
  );

  return isar;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
