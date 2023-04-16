import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/egzersiz.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';

class Sport extends StatefulWidget {
  const Sport({Key? key}) : super(key: key);

  @override
  State<Sport> createState() => _CreateState();
}

class _CreateState extends State<Sport> {
  late Isar isar;
  @override
  void initState() {
    super.initState();
    isar = Provider.of<Isar>(context, listen: false);
  }

  List<String> egzersizBolge = ['gogus', 'kol', 'bacak'];
  String dropdownValue = 'gogus';
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _tekrarController = TextEditingController();
  final TextEditingController _setController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _newCatController = TextEditingController();

  TimeOfDay selectedTime = TimeOfDay.now();

  adItemToDatabase(String egzersizTitle, String egzersizCategory,
      int egzersizTekrar, int egzersizSet) async {
    final newEgzersiz = Egzersiz()
      ..egzersizTitle = egzersizTitle
      ..egzersizBolge = egzersizCategory
      ..egzersizTekrar = egzersizTekrar
      ..egzersizSet = egzersizSet;
    isar.writeTxn(() => isar.egzersizs.put(newEgzersiz));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: const Text("Add Sport"),
        backgroundColor: Color.fromARGB(255, 158, 219, 205),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Category",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: DropdownButton(
                    focusColor: Color.fromARGB(255, 255, 255, 255),
                    dropdownColor: Color.fromARGB(255, 180, 255, 237),
                    isExpanded: true,
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: egzersizBolge
                        .map<DropdownMenuItem<String>>((String nvalue) {
                      return DropdownMenuItem<String>(
                          value: nvalue, child: Text(nvalue));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: const Text("Bolge ekle"),
                                content: TextFormField(
                                    controller: _newCatController),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        String newBolge =
                                            _newCatController.text.trim();
                                        if (newBolge.isNotEmpty) {
                                          setState(() {
                                            egzersizBolge.add(newBolge);
                                            dropdownValue = newBolge;
                                          });
                                          Navigator.of(context).pop();
                                        }
                                      },
                                      child: const Text("Add"))
                                ],
                              ));
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child:
                  Text("Title", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            TextFormField(
              controller: _titleController,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Kaç Tekrar",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            TextFormField(
              controller: _tekrarController,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Kaç set?",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            TextFormField(
              controller: _setController,
            ),
            SizedBox(
              height: 30.0,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 158, 219, 205),
                ),
                onPressed: () {
                  String egzersizTitle = _titleController.text.trim();
                  String egzersizCategory = dropdownValue;
                  int egzersizTekrar = int.parse(_tekrarController.text.trim());
                  int egzersizSet = int.parse(_setController.text.trim());
                  adItemToDatabase(egzersizTitle, egzersizCategory,
                      egzersizTekrar, egzersizSet);
                  Navigator.of(context).pop();
                },
                child: const Text("Add"),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
