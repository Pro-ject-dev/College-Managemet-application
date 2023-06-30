import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class sem5 extends StatefulWidget {
  final String id;
  const sem5(BuildContext context, {Key? key, required this.id, required})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<sem5> createState() => _sem5State();
}

class _sem5State extends State<sem5> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              return const Scaffold(
                  body: Center(
                      child: CircularProgressIndicator(color: Colors.red)));
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

            //sem5

            //sem5_exam1
            var s5_ex1_m1 = data!['SEMESTER 5 EXAM 1 Mark1'];
            var s5_ex1_m2 = data['SEMESTER 5 EXAM 1 Mark2'];
            var s5_ex1_m3 = data['SEMESTER 5 EXAM 1 Mark3'];
            var s5_ex1_m4 = data['SEMESTER 5 EXAM 1 Mark4'];
            var s5_ex1_m5 = data['SEMESTER 5 EXAM 1 Mark5'];
            var s5_ex1_m6 = data['SEMESTER 5 EXAM 1 Mark6'];
            var s5_ex1_m7 = data['SEMESTER 5 EXAM 1 Mark7'];
            //sem5_exam2
            var s5_ex2_m1 = data['SEMESTER 5 EXAM 2 Mark1'];
            var s5_ex2_m2 = data['SEMESTER 5 EXAM 2 Mark2'];
            var s5_ex2_m3 = data['SEMESTER 5 EXAM 2 Mark3'];
            var s5_ex2_m4 = data['SEMESTER 5 EXAM 2 Mark4'];
            var s5_ex2_m5 = data['SEMESTER 5 EXAM 2 Mark5'];
            var s5_ex2_m6 = data['SEMESTER 5 EXAM 2 Mark6'];
            var s5_ex2_m7 = data['SEMESTER 5 EXAM 2 Mark7'];
            //sem5_exam3
            var s5_ex3_m1 = data['SEMESTER 5 EXAM 3 Mark1'];
            var s5_ex3_m2 = data['SEMESTER 5 EXAM 3 Mark2'];
            var s5_ex3_m3 = data['SEMESTER 5 EXAM 3 Mark3'];
            var s5_ex3_m4 = data['SEMESTER 5 EXAM 3 Mark4'];
            var s5_ex3_m5 = data['SEMESTER 5 EXAM 3 Mark5'];
            var s5_ex3_m6 = data['SEMESTER 5 EXAM 3 Mark6'];
            var s5_ex3_m7 = data['SEMESTER 5 EXAM 3 Mark7'];
            //sem5_exam4
            var s5_ex4_m1 = data['SEMESTER 5 EXAM 4 Mark1'];
            var s5_ex4_m2 = data['SEMESTER 5 EXAM 4 Mark2'];
            var s5_ex4_m3 = data['SEMESTER 5 EXAM 4 Mark3'];
            var s5_ex4_m4 = data['SEMESTER 5 EXAM 4 Mark4'];
            var s5_ex4_m5 = data['SEMESTER 5 EXAM 4 Mark5'];
            var s5_ex4_m6 = data['SEMESTER 5 EXAM 4 Mark6'];
            var s5_ex4_m7 = data['SEMESTER 5 EXAM 4 Mark7'];

            //sem5_exam5
            var s5_ex5_m1 = data['SEMESTER 5 EXAM 5 Mark1'];
            var s5_ex5_m2 = data['SEMESTER 5 EXAM 5 Mark2'];
            var s5_ex5_m3 = data['SEMESTER 5 EXAM 5 Mark3'];
            var s5_ex5_m4 = data['SEMESTER 5 EXAM 5 Mark4'];
            var s5_ex5_m5 = data['SEMESTER 5 EXAM 5 Mark5'];
            var s5_ex5_m6 = data['SEMESTER 5 EXAM 5 Mark6'];
            var s5_ex5_m7 = data['SEMESTER 5 EXAM 5 Mark7'];

            final List sem5_ex1 = [
              s5_ex1_m1,
              s5_ex1_m2,
              s5_ex1_m3,
              s5_ex1_m4,
              s5_ex1_m5,
              s5_ex1_m6,
              s5_ex1_m7
            ];
            final List sem5_ex2 = [
              s5_ex2_m1,
              s5_ex2_m2,
              s5_ex2_m3,
              s5_ex2_m4,
              s5_ex2_m5,
              s5_ex2_m6,
              s5_ex2_m7
            ];
            final List sem5_ex3 = [
              s5_ex3_m1,
              s5_ex3_m2,
              s5_ex3_m3,
              s5_ex3_m4,
              s5_ex3_m5,
              s5_ex3_m6,
              s5_ex3_m7
            ];
            final List sem5_ex4 = [
              s5_ex4_m1,
              s5_ex4_m2,
              s5_ex4_m3,
              s5_ex4_m4,
              s5_ex4_m5,
              s5_ex4_m6,
              s5_ex4_m7
            ];
            final List sem5_ex5 = [
              s5_ex5_m1,
              s5_ex5_m2,
              s5_ex5_m3,
              s5_ex5_m4,
              s5_ex5_m5,
              s5_ex5_m6,
              s5_ex5_m7
            ];

            return Table(
                columnWidths: const <int, TableColumnWidth>{},
                defaultColumnWidth: FixedColumnWidth(12.0),
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 16, 0, 107),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'Subject',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 16, 0, 107),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'Exam 1',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 16, 0, 107),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'Exam 2',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 16, 0, 107),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'Exam 3',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 16, 0, 107),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'Exam 4',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 16, 0, 107),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Text(
                                'Exam 5',
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  for (var j = 0, i = 1, k = 0, l = 0, m = 0, n = 0;
                      j < sem5_ex1.length;
                      i < sem5_ex1.length,
                      k < sem5_ex2.length,
                      l < sem5_ex3.length,
                      m < sem5_ex4.length,
                      n < sem5_ex5.length,
                      j++,
                      i++,
                      k++,
                      l++,
                      m++,
                      n++) ...[
                    TableRow(children: [
                      TableCell(
                        child: Center(
                            child: Text(i.toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem5_ex1[j].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem5_ex2[k].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem5_ex3[l].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem5_ex4[m].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem5_ex5[n].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                    ])
                  ]
                ]);
          }),
    );
  }
}
