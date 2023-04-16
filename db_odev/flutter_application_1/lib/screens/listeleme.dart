import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';

import '../db/egzersiz.dart';

class ListExercise extends StatefulWidget {
  const ListExercise({super.key});

  @override
  State<ListExercise> createState() => _ListExerciseState();
}

class _ListExerciseState extends State<ListExercise> {
  late Isar isar;

  @override
  void initState() {
    super.initState();
    isar = Provider.of<Isar>(context, listen: false);
  }

  Future<List<Egzersiz>> getExercises() async {
    return await isar.egzersizs.where().findAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Egzersiz>>(
        future: getExercises(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          }

          List<Egzersiz> exercises = snapshot.data!;

          return ListView.builder(
            itemCount: exercises.length,
            itemBuilder: (BuildContext context, int index) {
              Egzersiz exercise = exercises[index];

              return ListTile(
                title: Text(exercise.egzersizTitle.toString()),
                subtitle: Text(exercise.egzersizBolge.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
