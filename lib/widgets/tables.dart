import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class sem1 extends StatefulWidget {
  final String id;
  const sem1(BuildContext context, {Key? key, required this.id, required})
      : super(key: key);

  @override
  State<sem1> createState() => _sem1State();
}

class _sem1State extends State<sem1> {
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
            //sem1

            //sem1_exam1
            var s1_ex1_m1 = data!['SEMESTER 1 EXAM 1 Mark1'];
            var s1_ex1_m2 = data['SEMESTER 1 EXAM 1 Mark2'];
            var s1_ex1_m3 = data['SEMESTER 1 EXAM 1 Mark3'];
            var s1_ex1_m4 = data['SEMESTER 1 EXAM 1 Mark4'];
            var s1_ex1_m5 = data['SEMESTER 1 EXAM 1 Mark5'];
            var s1_ex1_m6 = data['SEMESTER 1 EXAM 1 Mark6'];
            var s1_ex1_m7 = data['SEMESTER 1 EXAM 1 Mark7'];
            //sem1_exam2
            var s1_ex2_m1 = data['SEMESTER 1 EXAM 2 Mark1'];
            var s1_ex2_m2 = data['SEMESTER 1 EXAM 2 Mark2'];
            var s1_ex2_m3 = data['SEMESTER 1 EXAM 2 Mark3'];
            var s1_ex2_m4 = data['SEMESTER 1 EXAM 2 Mark4'];
            var s1_ex2_m5 = data['SEMESTER 1 EXAM 2 Mark5'];
            var s1_ex2_m6 = data['SEMESTER 1 EXAM 2 Mark6'];
            var s1_ex2_m7 = data['SEMESTER 1 EXAM 2 Mark7'];
            //sem1_exam3
            var s1_ex3_m1 = data['SEMESTER 1 EXAM 3 Mark1'];
            var s1_ex3_m2 = data['SEMESTER 1 EXAM 3 Mark2'];
            var s1_ex3_m3 = data['SEMESTER 1 EXAM 3 Mark3'];
            var s1_ex3_m4 = data['SEMESTER 1 EXAM 3 Mark4'];
            var s1_ex3_m5 = data['SEMESTER 1 EXAM 3 Mark5'];
            var s1_ex3_m6 = data['SEMESTER 1 EXAM 3 Mark6'];
            var s1_ex3_m7 = data['SEMESTER 1 EXAM 3 Mark7'];
            //sem1_exam4
            var s1_ex4_m1 = data['SEMESTER 1 EXAM 4 Mark1'];
            var s1_ex4_m2 = data['SEMESTER 1 EXAM 4 Mark2'];
            var s1_ex4_m3 = data['SEMESTER 1 EXAM 4 Mark3'];
            var s1_ex4_m4 = data['SEMESTER 1 EXAM 4 Mark4'];
            var s1_ex4_m5 = data['SEMESTER 1 EXAM 4 Mark5'];
            var s1_ex4_m6 = data['SEMESTER 1 EXAM 4 Mark6'];
            var s1_ex4_m7 = data['SEMESTER 1 EXAM 4 Mark7'];

            //sem1_exam5
            var s1_ex5_m1 = data['SEMESTER 1 EXAM 5 Mark1'];
            var s1_ex5_m2 = data['SEMESTER 1 EXAM 5 Mark2'];
            var s1_ex5_m3 = data['SEMESTER 1 EXAM 5 Mark3'];
            var s1_ex5_m4 = data['SEMESTER 1 EXAM 5 Mark4'];
            var s1_ex5_m5 = data['SEMESTER 1 EXAM 5 Mark5'];
            var s1_ex5_m6 = data['SEMESTER 1 EXAM 5 Mark6'];
            var s1_ex5_m7 = data['SEMESTER 1 EXAM 5 Mark7'];

            //sem2

            //sem2_exam1
            var s2_ex1_m1 = data['SEMESTER 2 EXAM 1 Mark1'];
            var s2_ex1_m2 = data['SEMESTER 2 EXAM 1 Mark2'];
            var s2_ex1_m3 = data['SEMESTER 2 EXAM 1 Mark3'];
            var s2_ex1_m4 = data['SEMESTER 2 EXAM 1 Mark4'];
            var s2_ex1_m5 = data['SEMESTER 2 EXAM 1 Mark5'];
            var s2_ex1_m6 = data['SEMESTER 2 EXAM 1 Mark6'];
            var s2_ex1_m7 = data['SEMESTER 2 EXAM 1 Mark7'];
            //sem2_exam2
            var s2_ex2_m1 = data['SEMESTER 2 EXAM 2 Mark1'];
            var s2_ex2_m2 = data['SEMESTER 2 EXAM 2 Mark2'];
            var s2_ex2_m3 = data['SEMESTER 2 EXAM 2 Mark3'];
            var s2_ex2_m4 = data['SEMESTER 2 EXAM 2 Mark4'];
            var s2_ex2_m5 = data['SEMESTER 2 EXAM 2 Mark5'];
            var s2_ex2_m6 = data['SEMESTER 2 EXAM 2 Mark6'];
            var s2_ex2_m7 = data['SEMESTER 2 EXAM 2 Mark7'];
            //sem2_exam3
            var s2_ex3_m1 = data['SEMESTER 2 EXAM 3 Mark1'];
            var s2_ex3_m2 = data['SEMESTER 2 EXAM 3 Mark2'];
            var s2_ex3_m3 = data['SEMESTER 2 EXAM 3 Mark3'];
            var s2_ex3_m4 = data['SEMESTER 2 EXAM 3 Mark4'];
            var s2_ex3_m5 = data['SEMESTER 2 EXAM 3 Mark5'];
            var s2_ex3_m6 = data['SEMESTER 2 EXAM 3 Mark6'];
            var s2_ex3_m7 = data['SEMESTER 2 EXAM 3 Mark7'];
            //sem2_exam4
            var s2_ex4_m1 = data['SEMESTER 2 EXAM 4 Mark1'];
            var s2_ex4_m2 = data['SEMESTER 2 EXAM 4 Mark2'];
            var s2_ex4_m3 = data['SEMESTER 2 EXAM 4 Mark3'];
            var s2_ex4_m4 = data['SEMESTER 2 EXAM 4 Mark4'];
            var s2_ex4_m5 = data['SEMESTER 2 EXAM 4 Mark5'];
            var s2_ex4_m6 = data['SEMESTER 2 EXAM 4 Mark6'];
            var s2_ex4_m7 = data['SEMESTER 2 EXAM 4 Mark7'];

            //sem2_exam5
            var s2_ex5_m1 = data['SEMESTER 2 EXAM 5 Mark1'];
            var s2_ex5_m2 = data['SEMESTER 2 EXAM 5 Mark2'];
            var s2_ex5_m3 = data['SEMESTER 2 EXAM 5 Mark3'];
            var s2_ex5_m4 = data['SEMESTER 2 EXAM 5 Mark4'];
            var s2_ex5_m5 = data['SEMESTER 2 EXAM 5 Mark5'];
            var s2_ex5_m6 = data['SEMESTER 2 EXAM 5 Mark6'];
            var s2_ex5_m7 = data['SEMESTER 2 EXAM 5 Mark7'];

            //sem3

            //sem3_exam1
            var s3_ex1_m1 = data['SEMESTER 3 EXAM 1 Mark1'];
            var s3_ex1_m2 = data['SEMESTER 3 EXAM 1 Mark2'];
            var s3_ex1_m3 = data['SEMESTER 3 EXAM 1 Mark3'];
            var s3_ex1_m4 = data['SEMESTER 3 EXAM 1 Mark4'];
            var s3_ex1_m5 = data['SEMESTER 3 EXAM 1 Mark5'];
            var s3_ex1_m6 = data['SEMESTER 3 EXAM 1 Mark6'];
            var s3_ex1_m7 = data['SEMESTER 3 EXAM 1 Mark7'];
            //sem3_exam2
            var s3_ex2_m1 = data['SEMESTER 3 EXAM 2 Mark1'];
            var s3_ex2_m2 = data['SEMESTER 3 EXAM 2 Mark2'];
            var s3_ex2_m3 = data['SEMESTER 3 EXAM 2 Mark3'];
            var s3_ex2_m4 = data['SEMESTER 3 EXAM 2 Mark4'];
            var s3_ex2_m5 = data['SEMESTER 3 EXAM 2 Mark5'];
            var s3_ex2_m6 = data['SEMESTER 3 EXAM 2 Mark6'];
            var s3_ex2_m7 = data['SEMESTER 3 EXAM 2 Mark7'];
            //sem3_exam3
            var s3_ex3_m1 = data['SEMESTER 3 EXAM 3 Mark1'];
            var s3_ex3_m2 = data['SEMESTER 3 EXAM 3 Mark2'];
            var s3_ex3_m3 = data['SEMESTER 3 EXAM 3 Mark3'];
            var s3_ex3_m4 = data['SEMESTER 3 EXAM 3 Mark4'];
            var s3_ex3_m5 = data['SEMESTER 3 EXAM 3 Mark5'];
            var s3_ex3_m6 = data['SEMESTER 3 EXAM 3 Mark6'];
            var s3_ex3_m7 = data['SEMESTER 3 EXAM 3 Mark7'];
            //sem3_exam4
            var s3_ex4_m1 = data['SEMESTER 3 EXAM 4 Mark1'];
            var s3_ex4_m2 = data['SEMESTER 3 EXAM 4 Mark2'];
            var s3_ex4_m3 = data['SEMESTER 3 EXAM 4 Mark3'];
            var s3_ex4_m4 = data['SEMESTER 3 EXAM 4 Mark4'];
            var s3_ex4_m5 = data['SEMESTER 3 EXAM 4 Mark5'];
            var s3_ex4_m6 = data['SEMESTER 3 EXAM 4 Mark6'];
            var s3_ex4_m7 = data['SEMESTER 3 EXAM 4 Mark7'];

            //sem3_exam5
            var s3_ex5_m1 = data['SEMESTER 3 EXAM 5 Mark1'];
            var s3_ex5_m2 = data['SEMESTER 3 EXAM 5 Mark2'];
            var s3_ex5_m3 = data['SEMESTER 3 EXAM 5 Mark3'];
            var s3_ex5_m4 = data['SEMESTER 3 EXAM 5 Mark4'];
            var s3_ex5_m5 = data['SEMESTER 3 EXAM 5 Mark5'];
            var s3_ex5_m6 = data['SEMESTER 3 EXAM 5 Mark6'];
            var s3_ex5_m7 = data['SEMESTER 3 EXAM 5 Mark7'];
            //sem4

            //sem4_exam1
            var s4_ex1_m1 = data['SEMESTER 4 EXAM 1 Mark1'];
            var s4_ex1_m2 = data['SEMESTER 4 EXAM 1 Mark2'];
            var s4_ex1_m3 = data['SEMESTER 4 EXAM 1 Mark3'];
            var s4_ex1_m4 = data['SEMESTER 4 EXAM 1 Mark4'];
            var s4_ex1_m5 = data['SEMESTER 4 EXAM 1 Mark5'];
            var s4_ex1_m6 = data['SEMESTER 4 EXAM 1 Mark6'];
            var s4_ex1_m7 = data['SEMESTER 4 EXAM 1 Mark7'];
            //sem4_exam2
            var s4_ex2_m1 = data['SEMESTER 4 EXAM 2 Mark1'];
            var s4_ex2_m2 = data['SEMESTER 4 EXAM 2 Mark2'];
            var s4_ex2_m3 = data['SEMESTER 4 EXAM 2 Mark3'];
            var s4_ex2_m4 = data['SEMESTER 4 EXAM 2 Mark4'];
            var s4_ex2_m5 = data['SEMESTER 4 EXAM 2 Mark5'];
            var s4_ex2_m6 = data['SEMESTER 4 EXAM 2 Mark6'];
            var s4_ex2_m7 = data['SEMESTER 4 EXAM 2 Mark7'];
            //sem4_exam3
            var s4_ex3_m1 = data['SEMESTER 4 EXAM 3 Mark1'];
            var s4_ex3_m2 = data['SEMESTER 4 EXAM 3 Mark2'];
            var s4_ex3_m3 = data['SEMESTER 4 EXAM 3 Mark3'];
            var s4_ex3_m4 = data['SEMESTER 4 EXAM 3 Mark4'];
            var s4_ex3_m5 = data['SEMESTER 4 EXAM 3 Mark5'];
            var s4_ex3_m6 = data['SEMESTER 4 EXAM 3 Mark6'];
            var s4_ex3_m7 = data['SEMESTER 4 EXAM 3 Mark7'];
            //sem4_exam4
            var s4_ex4_m1 = data['SEMESTER 4 EXAM 4 Mark1'];
            var s4_ex4_m2 = data['SEMESTER 4 EXAM 4 Mark2'];
            var s4_ex4_m3 = data['SEMESTER 4 EXAM 4 Mark3'];
            var s4_ex4_m4 = data['SEMESTER 4 EXAM 4 Mark4'];
            var s4_ex4_m5 = data['SEMESTER 4 EXAM 4 Mark5'];
            var s4_ex4_m6 = data['SEMESTER 4 EXAM 4 Mark6'];
            var s4_ex4_m7 = data['SEMESTER 4 EXAM 4 Mark7'];

            //sem4_exam5
            var s4_ex5_m1 = data['SEMESTER 4 EXAM 5 Mark1'];
            var s4_ex5_m2 = data['SEMESTER 4 EXAM 5 Mark2'];
            var s4_ex5_m3 = data['SEMESTER 4 EXAM 5 Mark3'];
            var s4_ex5_m4 = data['SEMESTER 4 EXAM 5 Mark4'];
            var s4_ex5_m5 = data['SEMESTER 4 EXAM 5 Mark5'];
            var s4_ex5_m6 = data['SEMESTER 4 EXAM 5 Mark6'];
            var s4_ex5_m7 = data['SEMESTER 4 EXAM 5 Mark7'];

            //sem5

            //sem5_exam1
            var s5_ex1_m1 = data['SEMESTER 5 EXAM 1 Mark1'];
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

            //sem6

            //sem6_exam1
            var s6_ex1_m1 = data['SEMESTER 6 EXAM 1 Mark1'];
            var s6_ex1_m2 = data['SEMESTER 6 EXAM 1 Mark2'];
            var s6_ex1_m3 = data['SEMESTER 6 EXAM 1 Mark3'];
            var s6_ex1_m4 = data['SEMESTER 6 EXAM 1 Mark4'];
            var s6_ex1_m5 = data['SEMESTER 6 EXAM 1 Mark5'];
            var s6_ex1_m6 = data['SEMESTER 6 EXAM 1 Mark6'];
            var s6_ex1_m7 = data['SEMESTER 6 EXAM 1 Mark7'];
            //sem6_exam2
            var s6_ex2_m1 = data['SEMESTER 6 EXAM 2 Mark1'];
            var s6_ex2_m2 = data['SEMESTER 6 EXAM 2 Mark2'];
            var s6_ex2_m3 = data['SEMESTER 6 EXAM 2 Mark3'];
            var s6_ex2_m4 = data['SEMESTER 6 EXAM 2 Mark4'];
            var s6_ex2_m5 = data['SEMESTER 6 EXAM 2 Mark5'];
            var s6_ex2_m6 = data['SEMESTER 6 EXAM 2 Mark6'];
            var s6_ex2_m7 = data['SEMESTER 6 EXAM 2 Mark7'];
            //sem6_exam3
            var s6_ex3_m1 = data['SEMESTER 6 EXAM 3 Mark1'];
            var s6_ex3_m2 = data['SEMESTER 6 EXAM 3 Mark2'];
            var s6_ex3_m3 = data['SEMESTER 6 EXAM 3 Mark3'];
            var s6_ex3_m4 = data['SEMESTER 6 EXAM 3 Mark4'];
            var s6_ex3_m5 = data['SEMESTER 6 EXAM 3 Mark5'];
            var s6_ex3_m6 = data['SEMESTER 6 EXAM 3 Mark6'];
            var s6_ex3_m7 = data['SEMESTER 6 EXAM 3 Mark7'];
            //sem6_exam4
            var s6_ex4_m1 = data['SEMESTER 6 EXAM 4 Mark1'];
            var s6_ex4_m2 = data['SEMESTER 6 EXAM 4 Mark2'];
            var s6_ex4_m3 = data['SEMESTER 6 EXAM 4 Mark3'];
            var s6_ex4_m4 = data['SEMESTER 6 EXAM 4 Mark4'];
            var s6_ex4_m5 = data['SEMESTER 6 EXAM 4 Mark5'];
            var s6_ex4_m6 = data['SEMESTER 6 EXAM 4 Mark6'];
            var s6_ex4_m7 = data['SEMESTER 6 EXAM 4 Mark7'];

            //sem6_exam5
            var s6_ex5_m1 = data['SEMESTER 6 EXAM 5 Mark1'];
            var s6_ex5_m2 = data['SEMESTER 6 EXAM 5 Mark2'];
            var s6_ex5_m3 = data['SEMESTER 6 EXAM 5 Mark3'];
            var s6_ex5_m4 = data['SEMESTER 6 EXAM 5 Mark4'];
            var s6_ex5_m5 = data['SEMESTER 6 EXAM 5 Mark5'];
            var s6_ex5_m6 = data['SEMESTER 6 EXAM 5 Mark6'];
            var s6_ex5_m7 = data['SEMESTER 6 EXAM 5 Mark7'];

            final List sem1_ex1 = [
              s1_ex1_m1,
              s1_ex1_m2,
              s1_ex1_m3,
              s1_ex1_m4,
              s1_ex1_m5,
              s1_ex1_m6,
              s1_ex1_m7
            ];
            final List sem1_ex2 = [
              s1_ex2_m1,
              s1_ex2_m2,
              s1_ex2_m3,
              s1_ex2_m4,
              s1_ex2_m5,
              s1_ex2_m6,
              s1_ex2_m7
            ];
            final List sem1_ex3 = [
              s1_ex3_m1,
              s1_ex3_m2,
              s1_ex3_m3,
              s1_ex3_m4,
              s1_ex3_m5,
              s1_ex3_m6,
              s1_ex3_m7
            ];
            final List sem1_ex4 = [
              s1_ex4_m1,
              s1_ex4_m2,
              s1_ex4_m3,
              s1_ex4_m4,
              s1_ex4_m5,
              s1_ex4_m6,
              s1_ex4_m7
            ];
            final List sem1_ex5 = [
              s1_ex5_m1,
              s1_ex5_m2,
              s1_ex5_m3,
              s1_ex5_m4,
              s1_ex5_m5,
              s1_ex5_m6,
              s1_ex5_m7
            ];
            //sem2
            final List sem2_ex1 = [
              s2_ex1_m1,
              s2_ex1_m2,
              s2_ex1_m3,
              s2_ex1_m4,
              s2_ex1_m5,
              s2_ex1_m6,
              s2_ex1_m7
            ];
            final List sem2_ex2 = [
              s2_ex2_m1,
              s2_ex2_m2,
              s2_ex2_m3,
              s2_ex2_m4,
              s2_ex2_m5,
              s2_ex2_m6,
              s2_ex2_m7
            ];
            final List sem2_ex3 = [
              s2_ex3_m1,
              s2_ex3_m2,
              s2_ex3_m3,
              s2_ex3_m4,
              s2_ex3_m5,
              s2_ex3_m6,
              s2_ex3_m7
            ];
            final List sem2_ex4 = [
              s2_ex4_m1,
              s2_ex4_m2,
              s2_ex4_m3,
              s2_ex4_m4,
              s2_ex4_m5,
              s2_ex4_m6,
              s2_ex4_m7
            ];
            final List sem2_ex5 = [
              s2_ex5_m1,
              s2_ex5_m2,
              s2_ex5_m3,
              s2_ex5_m4,
              s2_ex5_m5,
              s2_ex5_m6,
              s2_ex5_m7
            ];
            //sem3
            final List sem3_ex1 = [
              s3_ex1_m1,
              s3_ex1_m2,
              s3_ex1_m3,
              s3_ex1_m4,
              s3_ex1_m5,
              s3_ex1_m6,
              s3_ex1_m7
            ];
            final List sem3_ex2 = [
              s3_ex2_m1,
              s3_ex2_m2,
              s3_ex2_m3,
              s3_ex2_m4,
              s3_ex2_m5,
              s3_ex2_m6,
              s3_ex2_m7
            ];

            final List sem3_ex3 = [
              s3_ex3_m1,
              s3_ex3_m2,
              s3_ex3_m3,
              s3_ex3_m4,
              s3_ex3_m5,
              s3_ex3_m6,
              s3_ex3_m7
            ];

            final List sem3_ex4 = [
              s3_ex4_m1,
              s3_ex4_m2,
              s3_ex4_m3,
              s3_ex4_m4,
              s3_ex4_m5,
              s3_ex4_m6,
              s3_ex4_m7
            ];

            final List sem3_ex5 = [
              s3_ex5_m1,
              s3_ex5_m2,
              s3_ex5_m3,
              s3_ex5_m4,
              s3_ex5_m5,
              s3_ex5_m6,
              s3_ex5_m7
            ];
            //sem4

            final List sem4_ex1 = [
              s4_ex1_m1,
              s4_ex1_m2,
              s4_ex1_m3,
              s4_ex1_m4,
              s4_ex1_m5,
              s4_ex1_m6,
              s4_ex1_m7
            ];

            final List sem4_ex2 = [
              s4_ex2_m1,
              s4_ex2_m2,
              s4_ex2_m3,
              s4_ex2_m4,
              s4_ex2_m5,
              s4_ex2_m6,
              s4_ex2_m7
            ];
            final List sem4_ex3 = [
              s4_ex3_m1,
              s4_ex3_m2,
              s4_ex3_m3,
              s4_ex3_m4,
              s4_ex3_m5,
              s4_ex3_m6,
              s4_ex3_m7
            ];
            final List sem4_ex4 = [
              s4_ex4_m1,
              s4_ex4_m2,
              s4_ex4_m3,
              s4_ex4_m4,
              s4_ex4_m5,
              s4_ex4_m6,
              s4_ex4_m7
            ];
            final List sem4_ex5 = [
              s4_ex5_m1,
              s4_ex5_m2,
              s4_ex5_m3,
              s4_ex5_m4,
              s4_ex5_m5,
              s4_ex5_m6,
              s4_ex5_m7
            ];
            //sem 5
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
            //sem 6
            final List sem6_ex1 = [
              s6_ex1_m1,
              s6_ex1_m2,
              s6_ex1_m3,
              s6_ex1_m4,
              s6_ex1_m5,
              s6_ex1_m6,
              s6_ex1_m7
            ];
            final List sem6_ex2 = [
              s6_ex2_m1,
              s6_ex2_m2,
              s6_ex2_m3,
              s6_ex2_m4,
              s6_ex2_m5,
              s6_ex2_m6,
              s6_ex2_m7
            ];
            final List sem6_ex3 = [
              s6_ex3_m1,
              s6_ex3_m2,
              s6_ex3_m3,
              s6_ex3_m4,
              s6_ex3_m5,
              s6_ex3_m6,
              s6_ex3_m7
            ];
            final List sem6_ex4 = [
              s6_ex4_m1,
              s6_ex4_m2,
              s6_ex4_m3,
              s6_ex4_m4,
              s6_ex4_m5,
              s6_ex4_m6,
              s6_ex4_m7
            ];
            final List sem6_ex5 = [
              s6_ex5_m1,
              s6_ex5_m2,
              s6_ex5_m3,
              s6_ex5_m4,
              s6_ex5_m5,
              s6_ex5_m6,
              s6_ex5_m7
            ];

            return Table(
                columnWidths: const <int, TableColumnWidth>{},
                defaultColumnWidth: FixedColumnWidth(80.0),
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 32, 0, 215),
                          child: Center(
                            child: Text(
                              'Subject',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 32, 0, 215),
                          child: Center(
                            child: Text(
                              'Exam 1',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 32, 0, 215),
                          child: Center(
                            child: Text(
                              'Exam 2',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 32, 0, 215),
                          child: Center(
                            child: Text(
                              'Exam 3',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 32, 0, 215),
                          child: Center(
                            child: Text(
                              'Exam 4',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 32, 0, 215),
                          child: Center(
                            child: Text(
                              'Exam 5',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  for (var j = 0, i = 1, k = 0, l = 0, m = 0, n = 0;
                      j < sem1_ex1.length;
                      i < sem1_ex1.length,
                      k < sem1_ex1.length,
                      l < sem1_ex1.length,
                      m < sem1_ex1.length,
                      n < sem1_ex1.length,
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
                            child: Text(sem1_ex1[j].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem1_ex5[k].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem1_ex5[l].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem1_ex5[m].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                      TableCell(
                        child: Center(
                            child: Text(sem1_ex5[n].toString(),
                                style: TextStyle(fontSize: 18.0))),
                      ),
                    ])
                  ]
                ]);
          }),
    );
  }
}
