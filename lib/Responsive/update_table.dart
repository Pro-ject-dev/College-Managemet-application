import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class update_table extends StatefulWidget {
  final id;
  const update_table(BuildContext context, {Key? key, required this.id})
      : super(key: key);

  @override
  State<update_table> createState() => _update_tableState();
}

// ignore: camel_case_types
class _update_tableState extends State<update_table> {
  String dropdownvalue = 'select-semester';
  String dropvalues = 'select-year'; //

  final _formKey = GlobalKey<FormState>();
  String? text = "3434";

  final _taskControllermark1 = TextEditingController(text: "");
  final _taskControllermark2 = TextEditingController(text: "");
  final _taskControllermark3 = TextEditingController(text: "");
  final _taskControllermark4 = TextEditingController(text: "");
  final _taskControllermark5 = TextEditingController(text: "");
  final _taskControllermark6 = TextEditingController(text: "");
  final _taskControllermark7 = TextEditingController(text: "");

  var items = [
    "select-semester",
    'SEMESTER 1',
    'SEMESTER 2',
    'SEMESTER 3',
    'SEMESTER 4',
    'SEMESTER 5',
    'SEMESTER 6'
  ];
  var itemss = [
    "select-year",
    'EXAM 1',
    'EXAM 2',
    'EXAM 3',
    'EXAM 4',
    'EXAM 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Semester Details"),
      ),
      body: Form(
        child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          future: FirebaseFirestore.instance
              .collection('user')
              .doc(widget.id)
              .get()
              .catchError((onError) {
            return Scaffold();
          }),
          builder: (_, snapshot) {
            if (snapshot.hasError) {
              return Scaffold();
            } else if (snapshot.data == null) {
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(color: Colors.red),
                ),
              );
            } else if (snapshot.requireData.exists == false) {
              return Scaffold(
                  body: Center(
                      child: Text("No Data Found",
                          style: GoogleFonts.adamina(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width / 30))));
            }
            var data = snapshot.data!.data();
            var semester1ex1m1 = data!['SEMESTER 1 EXAM 1 Mark1'];
            var semester1ex1m2 = data['SEMESTER 1 EXAM 1 Mark2'];
            var semester1ex1m3 = data['SEMESTER 1 EXAM 1 Mark3'];
            var semester1ex1m4 = data["SEMESTER 1 EXAM 1 Mark4"];
            var semester1ex1m5 = data["SEMESTER 1 EXAM 1 Mark5"];
            var semester1ex1m6 = data['SEMESTER 1 EXAM 1 Mark6'];
            var semester1ex1m7 = data['SEMESTER 1 EXAM 1 Mark7'];
            var semester1ex2m1 = data['SEMESTER 1 EXAM 2 Mark1'];
            var semester1ex2m2 = data['SEMESTER 1 EXAM 2 Mark2'];
            var semester1ex2m3 = data['SEMESTER 1 EXAM 2 Mark3'];
            var semester1ex2m4 = data["SEMESTER 1 EXAM 2 Mark4"];
            var semester1ex2m5 = data["SEMESTER 1 EXAM 2 Mark5"];
            var semester1ex2m6 = data['SEMESTER 1 EXAM 2 Mark6'];
            var semester1ex2m7 = data['SEMESTER 1 EXAM 2 Mark7'];
            var semester1ex3m1 = data['SEMESTER 1 EXAM 3 Mark1'];
            var semester1ex3m2 = data['SEMESTER 1 EXAM 3 Mark2'];
            var semester1ex3m3 = data['SEMESTER 1 EXAM 3 Mark3'];
            var semester1ex3m4 = data["SEMESTER 1 EXAM 3 Mark4"];
            var semester1ex3m5 = data["SEMESTER 1 EXAM 3 Mark5"];
            var semester1ex3m6 = data['SEMESTER 1 EXAM 3 Mark6'];
            var semester1ex3m7 = data['SEMESTER 1 EXAM 3 Mark7'];
            var semester1ex4m1 = data['SEMESTER 1 EXAM 4 Mark1'];
            var semester1ex4m2 = data['SEMESTER 1 EXAM 4 Mark2'];
            var semester1ex4m3 = data['SEMESTER 1 EXAM 4 Mark3'];
            var semester1ex4m4 = data["SEMESTER 1 EXAM 4 Mark4"];
            var semester1ex4m5 = data["SEMESTER 1 EXAM 4 Mark5"];
            var semester1ex4m6 = data['SEMESTER 1 EXAM 4 Mark6'];
            var semester1ex4m7 = data['SEMESTER 1 EXAM 4 Mark7'];
            var semester1ex5m1 = data['SEMESTER 1 EXAM 5 Mark1'];
            var semester1ex5m2 = data['SEMESTER 1 EXAM 5 Mark2'];
            var semester1ex5m3 = data['SEMESTER 1 EXAM 5 Mark3'];
            var semester1ex5m4 = data["SEMESTER 1 EXAM 5 Mark4"];
            var semester1ex5m5 = data["SEMESTER 1 EXAM 5 Mark5"];
            var semester1ex5m6 = data['SEMESTER 1 EXAM 5 Mark6'];
            var semester1ex5m7 = data['SEMESTER 1 EXAM 5 Mark7'];

            //////////////////////////////////////////////////////
            var semester2ex1m1 = data['SEMESTER 2 EXAM 1 Mark1'];
            var semester2ex1m2 = data['SEMESTER 2 EXAM 1 Mark2'];
            var semester2ex1m3 = data['SEMESTER 2 EXAM 1 Mark3'];
            var semester2ex1m4 = data["SEMESTER 2 EXAM 1 Mark4"];
            var semester2ex1m5 = data["SEMESTER 2 EXAM 1 Mark5"];
            var semester2ex1m6 = data['SEMESTER 2 EXAM 1 Mark6'];
            var semester2ex1m7 = data['SEMESTER 2 EXAM 1 Mark7'];
            var semester2ex2m1 = data['SEMESTER 2 EXAM 2 Mark1'];
            var semester2ex2m2 = data['SEMESTER 2 EXAM 2 Mark2'];
            var semester2ex2m3 = data['SEMESTER 2 EXAM 2 Mark3'];
            var semester2ex2m4 = data["SEMESTER 2 EXAM 2 Mark4"];
            var semester2ex2m5 = data["SEMESTER 2 EXAM 2 Mark5"];
            var semester2ex2m6 = data['SEMESTER 2 EXAM 2 Mark6'];
            var semester2ex2m7 = data['SEMESTER 2 EXAM 2 Mark7'];
            var semester2ex3m1 = data['SEMESTER 2 EXAM 3 Mark1'];
            var semester2ex3m2 = data['SEMESTER 2 EXAM 3 Mark2'];
            var semester2ex3m3 = data['SEMESTER 2 EXAM 3 Mark3'];
            var semester2ex3m4 = data["SEMESTER 2 EXAM 3 Mark4"];
            var semester2ex3m5 = data["SEMESTER 2 EXAM 3 Mark5"];
            var semester2ex3m6 = data['SEMESTER 2 EXAM 3 Mark6'];
            var semester2ex3m7 = data['SEMESTER 2 EXAM 3 Mark7'];
            var semester2ex4m1 = data['SEMESTER 2 EXAM 4 Mark1'];
            var semester2ex4m2 = data['SEMESTER 2 EXAM 4 Mark2'];
            var semester2ex4m3 = data['SEMESTER 2 EXAM 4 Mark3'];
            var semester2ex4m4 = data["SEMESTER 2 EXAM 4 Mark4"];
            var semester2ex4m5 = data["SEMESTER 2 EXAM 4 Mark5"];
            var semester2ex4m6 = data['SEMESTER 2 EXAM 4 Mark6'];
            var semester2ex4m7 = data['SEMESTER 2 EXAM 4 Mark7'];
            var semester2ex5m1 = data['SEMESTER 2 EXAM 5 Mark1'];
            var semester2ex5m2 = data['SEMESTER 2 EXAM 5 Mark2'];
            var semester2ex5m3 = data['SEMESTER 2 EXAM 5 Mark3'];
            var semester2ex5m4 = data["SEMESTER 2 EXAM 5 Mark4"];
            var semester2ex5m5 = data["SEMESTER 2 EXAM 5 Mark5"];
            var semester2ex5m6 = data['SEMESTER 2 EXAM 5 Mark6'];
            var semester2ex5m7 = data['SEMESTER 2 EXAM 5 Mark7'];

            ////////////////////////////////////////////////////
            var semester3ex1m1 = data['SEMESTER 3 EXAM 1 Mark1'];
            var semester3ex1m2 = data['SEMESTER 3 EXAM 1 Mark2'];
            var semester3ex1m3 = data['SEMESTER 3 EXAM 1 Mark3'];
            var semester3ex1m4 = data["SEMESTER 3 EXAM 1 Mark4"];
            var semester3ex1m5 = data["SEMESTER 3 EXAM 1 Mark5"];
            var semester3ex1m6 = data['SEMESTER 3 EXAM 1 Mark6'];
            var semester3ex1m7 = data['SEMESTER 3 EXAM 1 Mark7'];
            var semester3ex2m1 = data['SEMESTER 3 EXAM 2 Mark1'];
            var semester3ex2m2 = data['SEMESTER 3 EXAM 2 Mark2'];
            var semester3ex2m3 = data['SEMESTER 3 EXAM 2 Mark3'];
            var semester3ex2m4 = data["SEMESTER 3 EXAM 2 Mark4"];
            var semester3ex2m5 = data["SEMESTER 3 EXAM 2 Mark5"];
            var semester3ex2m6 = data['SEMESTER 3 EXAM 2 Mark6'];
            var semester3ex2m7 = data['SEMESTER 3 EXAM 2 Mark7'];
            var semester3ex3m1 = data['SEMESTER 3 EXAM 3 Mark1'];
            var semester3ex3m2 = data['SEMESTER 3 EXAM 3 Mark2'];
            var semester3ex3m3 = data['SEMESTER 3 EXAM 3 Mark3'];
            var semester3ex3m4 = data["SEMESTER 3 EXAM 3 Mark4"];
            var semester3ex3m5 = data["SEMESTER 3 EXAM 3 Mark5"];
            var semester3ex3m6 = data['SEMESTER 3 EXAM 3 Mark6'];
            var semester3ex3m7 = data['SEMESTER 3 EXAM 3 Mark7'];
            var semester3ex4m1 = data['SEMESTER 3 EXAM 4 Mark1'];
            var semester3ex4m2 = data['SEMESTER 3 EXAM 4 Mark2'];
            var semester3ex4m3 = data['SEMESTER 3 EXAM 4 Mark3'];
            var semester3ex4m4 = data["SEMESTER 3 EXAM 4 Mark4"];
            var semester3ex4m5 = data["SEMESTER 3 EXAM 4 Mark5"];
            var semester3ex4m6 = data['SEMESTER 3 EXAM 4 Mark6'];
            var semester3ex4m7 = data['SEMESTER 3 EXAM 4 Mark7'];
            var semester3ex5m1 = data['SEMESTER 3 EXAM 5 Mark1'];
            var semester3ex5m2 = data['SEMESTER 3 EXAM 5 Mark2'];
            var semester3ex5m3 = data['SEMESTER 3 EXAM 5 Mark3'];
            var semester3ex5m4 = data["SEMESTER 3 EXAM 5 Mark4"];
            var semester3ex5m5 = data["SEMESTER 3 EXAM 5 Mark5"];
            var semester3ex5m6 = data['SEMESTER 3 EXAM 5 Mark6'];
            var semester3ex5m7 = data['SEMESTER 3 EXAM 5 Mark7'];

            //////////////////////////////////////////////////////
            var semester4ex1m1 = data['SEMESTER 4 EXAM 1 Mark1'];
            var semester4ex1m2 = data['SEMESTER 4 EXAM 1 Mark2'];
            var semester4ex1m3 = data['SEMESTER 4 EXAM 1 Mark3'];
            var semester4ex1m4 = data["SEMESTER 4 EXAM 1 Mark4"];
            var semester4ex1m5 = data["SEMESTER 4 EXAM 1 Mark5"];
            var semester4ex1m6 = data['SEMESTER 4 EXAM 1 Mark6'];
            var semester4ex1m7 = data['SEMESTER 4 EXAM 1 Mark7'];
            var semester4ex2m1 = data['SEMESTER 4 EXAM 2 Mark1'];
            var semester4ex2m2 = data['SEMESTER 4 EXAM 2 Mark2'];
            var semester4ex2m3 = data['SEMESTER 4 EXAM 2 Mark3'];
            var semester4ex2m4 = data["SEMESTER 4 EXAM 2 Mark4"];
            var semester4ex2m5 = data["SEMESTER 4 EXAM 2 Mark5"];
            var semester4ex2m6 = data['SEMESTER 4 EXAM 2 Mark6'];
            var semester4ex2m7 = data['SEMESTER 4 EXAM 2 Mark7'];
            var semester4ex3m1 = data['SEMESTER 4 EXAM 3 Mark1'];
            var semester4ex3m2 = data['SEMESTER 4 EXAM 3 Mark2'];
            var semester4ex3m3 = data['SEMESTER 4 EXAM 3 Mark3'];
            var semester4ex3m4 = data["SEMESTER 4 EXAM 3 Mark4"];
            var semester4ex3m5 = data["SEMESTER 4 EXAM 3 Mark5"];
            var semester4ex3m6 = data['SEMESTER 4 EXAM 3 Mark6'];
            var semester4ex3m7 = data['SEMESTER 4 EXAM 3 Mark7'];
            var semester4ex4m1 = data['SEMESTER 4 EXAM 4 Mark1'];
            var semester4ex4m2 = data['SEMESTER 4 EXAM 4 Mark2'];
            var semester4ex4m3 = data['SEMESTER 4 EXAM 4 Mark3'];
            var semester4ex4m4 = data["SEMESTER 4 EXAM 4 Mark4"];
            var semester4ex4m5 = data["SEMESTER 4 EXAM 4 Mark5"];
            var semester4ex4m6 = data['SEMESTER 4 EXAM 4 Mark6'];
            var semester4ex4m7 = data['SEMESTER 4 EXAM 4 Mark7'];
            var semester4ex5m1 = data['SEMESTER 4 EXAM 5 Mark1'];
            var semester4ex5m2 = data['SEMESTER 4 EXAM 5 Mark2'];
            var semester4ex5m3 = data['SEMESTER 4 EXAM 5 Mark3'];
            var semester4ex5m4 = data["SEMESTER 4 EXAM 5 Mark4"];
            var semester4ex5m5 = data["SEMESTER 4 EXAM 5 Mark5"];
            var semester4ex5m6 = data['SEMESTER 4 EXAM 5 Mark6'];
            var semester4ex5m7 = data['SEMESTER 4 EXAM 5 Mark7'];

            ////////////////////////////////////////////////////
            var semester5ex1m1 = data['SEMESTER 5 EXAM 1 Mark1'];
            var semester5ex1m2 = data['SEMESTER 5 EXAM 1 Mark2'];
            var semester5ex1m3 = data['SEMESTER 5 EXAM 1 Mark3'];
            var semester5ex1m4 = data["SEMESTER 5 EXAM 1 Mark4"];
            var semester5ex1m5 = data["SEMESTER 5 EXAM 1 Mark5"];
            var semester5ex1m6 = data['SEMESTER 5 EXAM 1 Mark6'];
            var semester5ex1m7 = data['SEMESTER 5 EXAM 1 Mark7'];
            var semester5ex2m1 = data['SEMESTER 5 EXAM 2 Mark1'];
            var semester5ex2m2 = data['SEMESTER 5 EXAM 2 Mark2'];
            var semester5ex2m3 = data['SEMESTER 5 EXAM 2 Mark3'];
            var semester5ex2m4 = data["SEMESTER 5 EXAM 2 Mark4"];
            var semester5ex2m5 = data["SEMESTER 5 EXAM 2 Mark5"];
            var semester5ex2m6 = data['SEMESTER 5 EXAM 2 Mark6'];
            var semester5ex2m7 = data['SEMESTER 5 EXAM 2 Mark7'];
            var semester5ex3m1 = data['SEMESTER 5 EXAM 3 Mark1'];
            var semester5ex3m2 = data['SEMESTER 5 EXAM 3 Mark2'];
            var semester5ex3m3 = data['SEMESTER 5 EXAM 3 Mark3'];
            var semester5ex3m4 = data["SEMESTER 5 EXAM 3 Mark4"];
            var semester5ex3m5 = data["SEMESTER 5 EXAM 3 Mark5"];
            var semester5ex3m6 = data['SEMESTER 5 EXAM 3 Mark6'];
            var semester5ex3m7 = data['SEMESTER 5 EXAM 3 Mark7'];
            var semester5ex4m1 = data['SEMESTER 5 EXAM 4 Mark1'];
            var semester5ex4m2 = data['SEMESTER 5 EXAM 4 Mark2'];
            var semester5ex4m3 = data['SEMESTER 5 EXAM 4 Mark3'];
            var semester5ex4m4 = data["SEMESTER 5 EXAM 4 Mark4"];
            var semester5ex4m5 = data["SEMESTER 5 EXAM 4 Mark5"];
            var semester5ex4m6 = data['SEMESTER 5 EXAM 4 Mark6'];
            var semester5ex4m7 = data['SEMESTER 5 EXAM 4 Mark7'];
            var semester5ex5m1 = data['SEMESTER 5 EXAM 5 Mark1'];
            var semester5ex5m2 = data['SEMESTER 5 EXAM 5 Mark2'];
            var semester5ex5m3 = data['SEMESTER 5 EXAM 5 Mark3'];
            var semester5ex5m4 = data["SEMESTER 5 EXAM 5 Mark4"];
            var semester5ex5m5 = data["SEMESTER 5 EXAM 5 Mark5"];
            var semester5ex5m6 = data['SEMESTER 5 EXAM 5 Mark6'];
            var semester5ex5m7 = data['SEMESTER 5 EXAM 5 Mark7'];
            ;
            ////////////////////////////////////////////////////
            var semester6ex1m1 = data['SEMESTER 6 EXAM 1 Mark1'];
            var semester6ex1m2 = data['SEMESTER 6 EXAM 1 Mark2'];
            var semester6ex1m3 = data['SEMESTER 6 EXAM 1 Mark3'];
            var semester6ex1m4 = data["SEMESTER 6 EXAM 1 Mark4"];
            var semester6ex1m5 = data["SEMESTER 6 EXAM 1 Mark5"];
            var semester6ex1m6 = data['SEMESTER 6 EXAM 1 Mark6'];
            var semester6ex1m7 = data['SEMESTER 6 EXAM 1 Mark7'];
            var semester6ex2m1 = data['SEMESTER 6 EXAM 2 Mark1'];
            var semester6ex2m2 = data['SEMESTER 6 EXAM 2 Mark2'];
            var semester6ex2m3 = data['SEMESTER 6 EXAM 2 Mark3'];
            var semester6ex2m4 = data["SEMESTER 6 EXAM 2 Mark4"];
            var semester6ex2m5 = data["SEMESTER 6 EXAM 2 Mark5"];
            var semester6ex2m6 = data['SEMESTER 6 EXAM 2 Mark6'];
            var semester6ex2m7 = data['SEMESTER 6 EXAM 2 Mark7'];
            var semester6ex3m1 = data['SEMESTER 6 EXAM 3 Mark1'];
            var semester6ex3m2 = data['SEMESTER 6 EXAM 3 Mark2'];
            var semester6ex3m3 = data['SEMESTER 6 EXAM 3 Mark3'];
            var semester6ex3m4 = data["SEMESTER 6 EXAM 3 Mark4"];
            var semester6ex3m5 = data["SEMESTER 6 EXAM 3 Mark5"];
            var semester6ex3m6 = data['SEMESTER 6 EXAM 3 Mark6'];
            var semester6ex3m7 = data['SEMESTER 6 EXAM 3 Mark7'];
            var semester6ex4m1 = data['SEMESTER 6 EXAM 4 Mark1'];
            var semester6ex4m2 = data['SEMESTER 6 EXAM 4 Mark2'];
            var semester6ex4m3 = data['SEMESTER 6 EXAM 4 Mark3'];
            var semester6ex4m4 = data["SEMESTER 6 EXAM 4 Mark4"];
            var semester6ex4m5 = data["SEMESTER 6 EXAM 4 Mark5"];
            var semester6ex4m6 = data['SEMESTER 6 EXAM 4 Mark6'];
            var semester6ex4m7 = data['SEMESTER 6 EXAM 4 Mark7'];
            var semester6ex5m1 = data['SEMESTER 6 EXAM 5 Mark1'];
            var semester6ex5m2 = data['SEMESTER 6 EXAM 5 Mark2'];
            var semester6ex5m3 = data['SEMESTER 6 EXAM 5 Mark3'];
            var semester6ex5m4 = data["SEMESTER 6 EXAM 5 Mark4"];
            var semester6ex5m5 = data["SEMESTER 6 EXAM 5 Mark5"];
            var semester6ex5m6 = data["SEMESTER 6 EXAM 5 Mark6"];
            var semester6ex5m7 = data["SEMESTER 6 EXAM 5 Mark7"];

            void call() {
              if (dropvalues == 'EXAM 1' && dropdownvalue == 'SEMESTER 1') {
                setState(() {
                  _taskControllermark1.text = semester1ex1m1.toString();
                  _taskControllermark2.text = semester1ex1m2.toString();
                  _taskControllermark3.text = semester1ex1m3.toString();
                  _taskControllermark4.text = semester1ex1m4.toString();
                  _taskControllermark5.text = semester1ex1m5.toString();
                  _taskControllermark6.text = semester1ex1m6.toString();
                  _taskControllermark7.text = semester1ex1m7.toString();
                });
              } else if (dropvalues == 'EXAM 2' &&
                  dropdownvalue == 'SEMESTER 1') {
                setState(() {
                  _taskControllermark1.text = semester1ex2m1.toString();
                  _taskControllermark2.text = semester1ex2m2.toString();
                  _taskControllermark3.text = semester1ex2m3.toString();
                  _taskControllermark4.text = semester1ex2m4.toString();
                  _taskControllermark5.text = semester1ex2m5.toString();
                  _taskControllermark6.text = semester1ex2m6.toString();
                  _taskControllermark7.text = semester1ex2m7.toString();
                });
              } else if (dropvalues == 'EXAM 3' &&
                  dropdownvalue == 'SEMESTER 1') {
                setState(() {
                  _taskControllermark1.text = semester1ex3m1.toString();
                  _taskControllermark2.text = semester1ex3m2.toString();
                  _taskControllermark3.text = semester1ex3m3.toString();
                  _taskControllermark4.text = semester1ex3m4.toString();
                  _taskControllermark5.text = semester1ex3m5.toString();
                  _taskControllermark6.text = semester1ex3m6.toString();
                  _taskControllermark7.text = semester1ex3m7.toString();
                });
              } else if (dropvalues == 'EXAM 4' &&
                  dropdownvalue == 'SEMESTER 1') {
                setState(() {
                  _taskControllermark1.text = semester1ex4m1.toString();
                  _taskControllermark2.text = semester1ex4m2.toString();
                  _taskControllermark3.text = semester1ex4m3.toString();
                  _taskControllermark4.text = semester1ex4m4.toString();
                  _taskControllermark5.text = semester1ex4m5.toString();
                  _taskControllermark6.text = semester1ex4m6.toString();
                  _taskControllermark7.text = semester1ex4m7.toString();
                });
              } else if (dropvalues == 'EXAM 5' &&
                  dropdownvalue == 'SEMESTER 1') {
                setState(() {
                  _taskControllermark1.text = semester1ex5m1.toString();
                  _taskControllermark2.text = semester1ex5m2.toString();
                  _taskControllermark3.text = semester1ex5m3.toString();
                  _taskControllermark4.text = semester1ex5m4.toString();
                  _taskControllermark5.text = semester1ex5m5.toString();
                  _taskControllermark6.text = semester1ex5m6.toString();
                  _taskControllermark7.text = semester1ex5m7.toString();
                });
              } else if (dropvalues == 'EXAM 1' &&
                  dropdownvalue == 'SEMESTER 2') {
                setState(() {
                  _taskControllermark1.text = semester2ex1m1.toString();
                  _taskControllermark2.text = semester2ex1m2.toString();
                  _taskControllermark3.text = semester2ex1m3.toString();
                  _taskControllermark4.text = semester2ex1m4.toString();
                  _taskControllermark5.text = semester2ex1m5.toString();
                  _taskControllermark6.text = semester2ex1m6.toString();
                  _taskControllermark7.text = semester2ex1m7.toString();
                });
              } else if (dropvalues == 'EXAM 2' &&
                  dropdownvalue == 'SEMESTER 2') {
                setState(() {
                  _taskControllermark1.text = semester2ex2m1.toString();
                  _taskControllermark2.text = semester2ex2m2.toString();
                  _taskControllermark3.text = semester2ex2m3.toString();
                  _taskControllermark4.text = semester2ex2m4.toString();
                  _taskControllermark5.text = semester2ex2m5.toString();
                  _taskControllermark6.text = semester2ex2m6.toString();
                  _taskControllermark7.text = semester2ex2m7.toString();
                });
              } else if (dropvalues == 'EXAM 3' &&
                  dropdownvalue == 'SEMESTER 2') {
                setState(() {
                  _taskControllermark1.text = semester2ex3m1.toString();
                  _taskControllermark2.text = semester2ex3m2.toString();
                  _taskControllermark3.text = semester2ex3m3.toString();
                  _taskControllermark4.text = semester2ex3m4.toString();
                  _taskControllermark5.text = semester2ex3m5.toString();
                  _taskControllermark6.text = semester2ex3m6.toString();
                  _taskControllermark7.text = semester2ex3m7.toString();
                });
              } else if (dropvalues == 'EXAM 4' &&
                  dropdownvalue == 'SEMESTER 2') {
                setState(() {
                  _taskControllermark1.text = semester2ex4m1.toString();
                  _taskControllermark2.text = semester2ex4m2.toString();
                  _taskControllermark3.text = semester2ex4m3.toString();
                  _taskControllermark4.text = semester2ex4m4.toString();
                  _taskControllermark5.text = semester2ex4m5.toString();
                  _taskControllermark6.text = semester2ex4m6.toString();
                  _taskControllermark7.text = semester2ex4m7.toString();
                });
              } else if (dropvalues == 'EXAM 5' &&
                  dropdownvalue == 'SEMESTER 2') {
                setState(() {
                  _taskControllermark1.text = semester2ex5m1.toString();
                  _taskControllermark2.text = semester2ex5m2.toString();
                  _taskControllermark3.text = semester2ex5m3.toString();
                  _taskControllermark4.text = semester2ex5m4.toString();
                  _taskControllermark5.text = semester2ex5m5.toString();
                  _taskControllermark6.text = semester2ex5m6.toString();
                  _taskControllermark7.text = semester2ex5m7.toString();
                });
              } else if (dropvalues == 'EXAM 1' &&
                  dropdownvalue == 'SEMESTER 3') {
                setState(() {
                  _taskControllermark1.text = semester3ex1m1.toString();
                  _taskControllermark2.text = semester3ex1m2.toString();
                  _taskControllermark3.text = semester3ex1m3.toString();
                  _taskControllermark4.text = semester3ex1m4.toString();
                  _taskControllermark5.text = semester3ex1m5.toString();
                  _taskControllermark6.text = semester3ex1m6.toString();
                  _taskControllermark7.text = semester3ex1m7.toString();
                });
              } else if (dropvalues == 'EXAM 2' &&
                  dropdownvalue == 'SEMESTER 3') {
                setState(() {
                  _taskControllermark1.text = semester3ex2m1.toString();
                  _taskControllermark2.text = semester3ex2m2.toString();
                  _taskControllermark3.text = semester3ex2m3.toString();
                  _taskControllermark4.text = semester3ex2m4.toString();
                  _taskControllermark5.text = semester3ex2m5.toString();
                  _taskControllermark6.text = semester3ex2m6.toString();
                  _taskControllermark7.text = semester3ex2m7.toString();
                });
              } else if (dropvalues == 'EXAM 3' &&
                  dropdownvalue == 'SEMESTER 3') {
                setState(() {
                  _taskControllermark1.text = semester3ex3m1.toString();
                  _taskControllermark2.text = semester3ex3m2.toString();
                  _taskControllermark3.text = semester3ex3m3.toString();
                  _taskControllermark4.text = semester3ex3m4.toString();
                  _taskControllermark5.text = semester3ex3m5.toString();
                  _taskControllermark6.text = semester3ex3m6.toString();
                  _taskControllermark7.text = semester3ex3m7.toString();
                });
              } else if (dropvalues == 'EXAM 4' &&
                  dropdownvalue == 'SEMESTER 3') {
                setState(() {
                  _taskControllermark1.text = semester3ex4m1.toString();
                  _taskControllermark2.text = semester3ex4m2.toString();
                  _taskControllermark3.text = semester3ex4m3.toString();
                  _taskControllermark4.text = semester3ex4m4.toString();
                  _taskControllermark5.text = semester3ex4m5.toString();
                  _taskControllermark6.text = semester3ex4m6.toString();
                  _taskControllermark7.text = semester3ex4m7.toString();
                });
              } else if (dropvalues == 'EXAM 5' &&
                  dropdownvalue == 'SEMESTER 3') {
                setState(() {
                  _taskControllermark1.text = semester3ex5m1.toString();
                  _taskControllermark2.text = semester3ex5m2.toString();
                  _taskControllermark3.text = semester3ex5m3.toString();
                  _taskControllermark4.text = semester3ex5m4.toString();
                  _taskControllermark5.text = semester3ex5m5.toString();
                  _taskControllermark6.text = semester3ex5m6.toString();
                  _taskControllermark7.text = semester3ex5m7.toString();
                });
              } else if (dropvalues == 'EXAM 1' &&
                  dropdownvalue == 'SEMESTER 4') {
                setState(() {
                  _taskControllermark1.text = semester4ex1m1.toString();
                  _taskControllermark2.text = semester4ex1m2.toString();
                  _taskControllermark3.text = semester4ex1m3.toString();
                  _taskControllermark4.text = semester4ex1m4.toString();
                  _taskControllermark5.text = semester4ex1m5.toString();
                  _taskControllermark6.text = semester4ex1m6.toString();
                  _taskControllermark7.text = semester4ex1m7.toString();
                });
              } else if (dropvalues == 'EXAM 2' &&
                  dropdownvalue == 'SEMESTER 4') {
                setState(() {
                  _taskControllermark1.text = semester4ex2m1.toString();
                  _taskControllermark2.text = semester4ex2m2.toString();
                  _taskControllermark3.text = semester4ex2m3.toString();
                  _taskControllermark4.text = semester4ex2m4.toString();
                  _taskControllermark5.text = semester4ex2m5.toString();
                  _taskControllermark6.text = semester4ex2m6.toString();
                  _taskControllermark7.text = semester4ex2m7.toString();
                });
              } else if (dropvalues == 'EXAM 3' &&
                  dropdownvalue == 'SEMESTER 4') {
                setState(() {
                  _taskControllermark1.text = semester4ex3m1.toString();
                  _taskControllermark2.text = semester4ex3m2.toString();
                  _taskControllermark3.text = semester4ex3m3.toString();
                  _taskControllermark4.text = semester4ex3m4.toString();
                  _taskControllermark5.text = semester4ex3m5.toString();
                  _taskControllermark6.text = semester4ex3m6.toString();
                  _taskControllermark7.text = semester4ex3m7.toString();
                });
              } else if (dropvalues == 'EXAM 4' &&
                  dropdownvalue == 'SEMESTER 4') {
                setState(() {
                  _taskControllermark1.text = semester4ex4m1.toString();
                  _taskControllermark2.text = semester4ex4m2.toString();
                  _taskControllermark3.text = semester4ex4m3.toString();
                  _taskControllermark4.text = semester4ex4m4.toString();
                  _taskControllermark5.text = semester4ex4m5.toString();
                  _taskControllermark6.text = semester4ex4m6.toString();
                  _taskControllermark7.text = semester4ex4m7.toString();
                });
              } else if (dropvalues == 'EXAM 5' &&
                  dropdownvalue == 'SEMESTER 4') {
                setState(() {
                  _taskControllermark1.text = semester4ex5m1.toString();
                  _taskControllermark2.text = semester4ex5m2.toString();
                  _taskControllermark3.text = semester4ex5m3.toString();
                  _taskControllermark4.text = semester4ex5m4.toString();
                  _taskControllermark5.text = semester4ex5m5.toString();
                  _taskControllermark6.text = semester4ex5m6.toString();
                  _taskControllermark7.text = semester4ex5m7.toString();
                });
              } else if (dropvalues == 'EXAM 1' &&
                  dropdownvalue == 'SEMESTER 5') {
                setState(() {
                  _taskControllermark1.text = semester5ex1m1.toString();
                  _taskControllermark2.text = semester5ex1m2.toString();
                  _taskControllermark3.text = semester5ex1m3.toString();
                  _taskControllermark4.text = semester5ex1m4.toString();
                  _taskControllermark5.text = semester5ex1m5.toString();
                  _taskControllermark6.text = semester5ex1m6.toString();
                  _taskControllermark7.text = semester5ex1m7.toString();
                });
              } else if (dropvalues == 'EXAM 2' &&
                  dropdownvalue == 'SEMESTER 5') {
                setState(() {
                  _taskControllermark1.text = semester5ex2m1.toString();
                  _taskControllermark2.text = semester5ex2m2.toString();
                  _taskControllermark3.text = semester5ex2m3.toString();
                  _taskControllermark4.text = semester5ex2m4.toString();
                  _taskControllermark5.text = semester5ex2m5.toString();
                  _taskControllermark6.text = semester5ex2m6.toString();
                  _taskControllermark7.text = semester5ex2m7.toString();
                });
              } else if (dropvalues == 'EXAM 3' &&
                  dropdownvalue == 'SEMESTER 5') {
                setState(() {
                  _taskControllermark1.text = semester5ex3m1.toString();
                  _taskControllermark2.text = semester5ex3m2.toString();
                  _taskControllermark3.text = semester5ex3m3.toString();
                  _taskControllermark4.text = semester5ex3m4.toString();
                  _taskControllermark5.text = semester5ex3m5.toString();
                  _taskControllermark6.text = semester5ex3m6.toString();
                  _taskControllermark7.text = semester5ex3m7.toString();
                });
              } else if (dropvalues == 'EXAM 4' &&
                  dropdownvalue == 'SEMESTER 5') {
                setState(() {
                  _taskControllermark1.text = semester5ex4m1.toString();
                  _taskControllermark2.text = semester5ex4m2.toString();
                  _taskControllermark3.text = semester5ex4m3.toString();
                  _taskControllermark4.text = semester5ex4m4.toString();
                  _taskControllermark5.text = semester5ex4m5.toString();
                  _taskControllermark6.text = semester5ex4m6.toString();
                  _taskControllermark7.text = semester5ex4m7.toString();
                });
              } else if (dropvalues == 'EXAM 5' &&
                  dropdownvalue == 'SEMESTER 5') {
                setState(() {
                  _taskControllermark1.text = semester5ex5m1.toString();
                  _taskControllermark2.text = semester5ex5m2.toString();
                  _taskControllermark3.text = semester5ex5m3.toString();
                  _taskControllermark4.text = semester5ex5m4.toString();
                  _taskControllermark5.text = semester5ex5m5.toString();
                  _taskControllermark6.text = semester5ex5m6.toString();
                  _taskControllermark7.text = semester5ex5m7.toString();
                });
              } else if (dropvalues == 'EXAM 1' &&
                  dropdownvalue == 'SEMESTER 6') {
                setState(() {
                  _taskControllermark1.text = semester6ex1m1.toString();
                  _taskControllermark2.text = semester6ex1m2.toString();
                  _taskControllermark3.text = semester6ex1m3.toString();
                  _taskControllermark4.text = semester6ex1m4.toString();
                  _taskControllermark5.text = semester6ex1m5.toString();
                  _taskControllermark6.text = semester6ex1m6.toString();
                  _taskControllermark7.text = semester6ex1m7.toString();
                });
              } else if (dropvalues == 'EXAM 2' &&
                  dropdownvalue == 'SEMESTER 6') {
                setState(() {
                  _taskControllermark1.text = semester6ex2m1.toString();
                  _taskControllermark2.text = semester6ex2m2.toString();
                  _taskControllermark3.text = semester6ex2m3.toString();
                  _taskControllermark4.text = semester6ex2m4.toString();
                  _taskControllermark5.text = semester6ex2m5.toString();
                  _taskControllermark6.text = semester6ex2m6.toString();
                  _taskControllermark7.text = semester6ex2m7.toString();
                });
              } else if (dropvalues == 'EXAM 3' &&
                  dropdownvalue == 'SEMESTER 6') {
                setState(() {
                  _taskControllermark1.text = semester6ex3m1.toString();
                  _taskControllermark2.text = semester6ex3m2.toString();
                  _taskControllermark3.text = semester6ex3m3.toString();
                  _taskControllermark4.text = semester6ex3m4.toString();
                  _taskControllermark5.text = semester6ex3m5.toString();
                  _taskControllermark6.text = semester6ex3m6.toString();
                  _taskControllermark7.text = semester6ex3m7.toString();
                });
              } else if (dropvalues == 'EXAM 4' &&
                  dropdownvalue == 'SEMESTER 6') {
                setState(() {
                  _taskControllermark1.text = semester6ex4m1.toString();
                  _taskControllermark2.text = semester6ex4m2.toString();
                  _taskControllermark3.text = semester6ex4m3.toString();
                  _taskControllermark4.text = semester6ex4m4.toString();
                  _taskControllermark5.text = semester6ex4m5.toString();
                  _taskControllermark6.text = semester6ex4m6.toString();
                  _taskControllermark7.text = semester6ex4m7.toString();
                });
              } else if (dropvalues == 'EXAM 5' &&
                  dropdownvalue == 'SEMESTER 6') {
                setState(() {
                  _taskControllermark1.text = semester6ex5m1.toString();
                  _taskControllermark2.text = semester6ex5m2.toString();
                  _taskControllermark3.text = semester6ex5m3.toString();
                  _taskControllermark4.text = semester6ex5m4.toString();
                  _taskControllermark5.text = semester6ex5m5.toString();
                  _taskControllermark6.text = semester6ex5m6.toString();
                  _taskControllermark7.text = semester6ex5m7.toString();
                });
              } else {
                _taskControllermark1.text = "";
                _taskControllermark2.text = "";
                _taskControllermark3.text = "";
                _taskControllermark4.text = "";
                _taskControllermark5.text = "";
                _taskControllermark6.text = "";
                _taskControllermark7.text = "";
              }
            }

            return Scaffold(
              body: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.89,
                  width: MediaQuery.of(context).size.width * 0.82,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
                      color: Colors.white),
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.15,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.brown)),
                              child: DropdownButton(
                                // Initial Value
                                value: dropdownvalue,
                                underline: Container(color: Colors.transparent),
                                isExpanded: true,
                                focusColor: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    alignment: AlignmentDirectional.topStart,
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.purple),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                    call();
                                  });
                                },
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.15,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.brown)),
                              child: DropdownButton(
                                underline: Container(color: Colors.transparent),

                                // Initial Value
                                value: dropvalues,
                                isExpanded: true,
                                focusColor: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                items: itemss.map((String ite) {
                                  return DropdownMenuItem(
                                    alignment: AlignmentDirectional.topStart,
                                    value: ite,
                                    child: Text(
                                      ite,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.red,
                                          letterSpacing: 0.2),
                                      selectionColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValues) {
                                  setState(() {
                                    dropvalues = newValues!;
                                    call();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.07),
                          Row(
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Flexible(
                                child: TextFormField(
                                  controller: _taskControllermark1,
                                  decoration: const InputDecoration(
                                      label: Text("SUBJECT 1",
                                          style: TextStyle(color: Colors.blue)),
                                      contentPadding: EdgeInsets.only(left: 2)),
                                  onFieldSubmitted: (value) =>
                                      _taskControllermark1.text = value,
                                ),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Flexible(
                                  child: TextFormField(
                                // controller: _taskControllermark2,
                                decoration: const InputDecoration(
                                    label: Text("SUBJECT 2",
                                        style: TextStyle(color: Colors.blue)),
                                    contentPadding: EdgeInsets.only(left: 2)),
                                controller: _taskControllermark2,
                                onFieldSubmitted: (value) =>
                                    _taskControllermark2.text = value,
                              )),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Flexible(
                                  child: TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("SUBJECT 3",
                                      style: TextStyle(color: Colors.blue)),
                                  contentPadding: EdgeInsets.only(left: 2),
                                ),
                                controller: _taskControllermark3,
                                onFieldSubmitted: (value) =>
                                    _taskControllermark3.text = value,
                              )),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.08),
                          Row(
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Flexible(
                                  child: TextFormField(
                                decoration: const InputDecoration(
                                  label: Text("SUBJECT 4",
                                      style: TextStyle(color: Colors.blue)),
                                  contentPadding: EdgeInsets.only(left: 2),
                                ),
                                controller: _taskControllermark4,
                                onFieldSubmitted: (value) =>
                                    _taskControllermark4.text = value,
                              )),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Flexible(
                                  child: TextFormField(
                                decoration: const InputDecoration(
                                    label: Text("SUBJECT 5",
                                        style: TextStyle(color: Colors.blue)),
                                    contentPadding: EdgeInsets.only(left: 2)),
                                controller: _taskControllermark5,
                                onFieldSubmitted: (value) =>
                                    _taskControllermark5.text = value,
                              )),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Flexible(
                                  child: TextFormField(
                                      textDirection: TextDirection.ltr,
                                      decoration: const InputDecoration(
                                          label: Text(
                                            "SUBJECT 6",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                          contentPadding:
                                              EdgeInsets.only(left: 2)),
                                      controller: _taskControllermark6,
                                      onFieldSubmitted: (value) {
                                        _taskControllermark6.text = value;
                                      })),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.08),
                          Row(
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Flexible(
                                  child: TextFormField(
                                decoration: const InputDecoration(
                                    label: Text("SUBJECT 7",
                                        style: TextStyle(color: Colors.blue)),
                                    contentPadding: EdgeInsets.only(left: 2)),
                                controller: _taskControllermark7,
                                onFieldSubmitted: (value) =>
                                    _taskControllermark7.text = value,
                              )),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.56),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    if (!_formKey.currentState!.validate()) {
                                      return;
                                    }
                                    _formKey.currentState!.save();

                                    FirebaseFirestore.instance
                                        .collection("user")
                                        .doc("7937")
                                        .update(
                                      {
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark1": _taskControllermark1.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark2": _taskControllermark2.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark3": _taskControllermark3.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark4": _taskControllermark4.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark5": _taskControllermark5.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark6": _taskControllermark6.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark7": _taskControllermark7.text,
                                      },
                                    );
                                    showAlertDialogs(
                                        context, "Added Successfully");
                                  },
                                  child: Text(
                                    "Add",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  color: Color.fromARGB(255, 255, 0, 0),
                                ),
                                MaterialButton(
                                  color: Colors.green,
                                  onPressed: () {
                                    if (!_formKey.currentState!.validate()) {
                                      return;
                                    }
                                    _formKey.currentState!.save();

                                    FirebaseFirestore.instance
                                        .collection("user")
                                        .doc(widget.id)
                                        .update(
                                      {
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark1": _taskControllermark1.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark2": _taskControllermark2.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark3": _taskControllermark3.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark4": _taskControllermark4.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark5": _taskControllermark5.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark6": _taskControllermark6.text,
                                        "$dropdownvalue"
                                            " $dropvalues"
                                            " Mark7": _taskControllermark7.text,
                                      },
                                    );
                                    showAlertDialogs(
                                        context, "Updated Successfully");
                                  },
                                  child: const Text(
                                    "Update",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

showAlertDialogs(BuildContext context, String content) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () => Navigator.pop(context, false),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Info"),
    content: Text(content),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
