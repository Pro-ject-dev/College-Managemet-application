import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Responsive/pdf.dart';
import 'package:flutter_application_1/Responsive/update_table.dart';
import 'package:flutter_application_1/widgets/table_form.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker_web/image_picker_web.dart';

class desktopview extends StatefulWidget {
  final String id;

  desktopview(BuildContext context, {Key? key, required this.id})
      : super(key: key);

  @override
  _desktopviewState createState() => _desktopviewState();
}

class _desktopviewState extends State<desktopview> {
  TextEditingController dateCtl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String url = "";

  // Updaing Student
  CollectionReference students = FirebaseFirestore.instance.collection('user');

  String Gende = "Male";
  String Hostel = "Dayschollar";
  String? dateob;
  bool changed = false;
  late Uint8List images;

  var dob;

  var Nation;

  var F_name;

  var M_name;

  var Gender;

  var R_address;

  var Roll_no;

  var Hosteller;
  var Occupation;
  var busstop;
  var M_no;
  var e_mail;
  var Community;

  var Blood_Group;
  var Aadhar;
  var HSC;
  var HSC_MARK;
  var HSC_BOARD;
  var SSLC;
  var SSLC_MARK;
  var SSLC_BOARD;

  var image;
  var email;

  var pic;
  var title;
  var dobp;
  var nation;
  var f_name;
  var m_name;
  var r_address;
  var roll_no;
  var gender;
  var blood_Group;
  var occupation;
  var m_number;

  var community;
  var hosteller;
  var aadhar;
  var hSC;
  var hSC_MARK;
  var hSC_BOARD;
  var sSLC;
  var sSLC_MARK;
  var sSLC_BOARD;
  var id;
  var sem1;
  var s1_ex1_m2;
  var s1_ex1_m3;
  var s1_ex1_m4;
  var s1_ex1_m5;
  var s1_ex1_m6;
  var s1_ex1_m7;

  var s1_ex2_m1;
  var s1_ex2_m2;
  var s1_ex2_m3;
  var s1_ex2_m4;
  var s1_ex2_m5;
  var s1_ex2_m6;
  var s1_ex2_m7;

  var s1_ex3_m1;
  var s1_ex3_m2;
  var s1_ex3_m3;
  var s1_ex3_m4;
  var s1_ex3_m5;
  var s1_ex3_m6;
  var s1_ex3_m7;
  //sem1_exam4
  var s1_ex4_m1;
  var s1_ex4_m2;
  var s1_ex4_m3;
  var s1_ex4_m4;
  var s1_ex4_m5;
  var s1_ex4_m6;
  var s1_ex4_m7;

  //sem1_exam5
  var s1_ex5_m1;
  var s1_ex5_m2;
  var s1_ex5_m3;
  var s1_ex5_m4;
  var s1_ex5_m5;
  var s1_ex5_m6;
  var s1_ex5_m7;

  var s2_ex1_m1;
  var s2_ex1_m2;
  var s2_ex1_m3;
  var s2_ex1_m4;
  var s2_ex1_m5;
  var s2_ex1_m6;
  var s2_ex1_m7;
  //sem2_exam2
  var s2_ex2_m1;
  var s2_ex2_m2;
  var s2_ex2_m3;
  var s2_ex2_m4;
  var s2_ex2_m5;
  var s2_ex2_m6;
  var s2_ex2_m7;
  //sem2_exam3
  var s2_ex3_m1;
  var s2_ex3_m2;
  var s2_ex3_m3;
  var s2_ex3_m4;
  var s2_ex3_m5;
  var s2_ex3_m6;
  var s2_ex3_m7;
  //sem2_exam4
  var s2_ex4_m1;
  var s2_ex4_m2;
  var s2_ex4_m3;
  var s2_ex4_m4;
  var s2_ex4_m5;
  var s2_ex4_m6;
  var s2_ex4_m7;

  //sem2_exam5
  var s2_ex5_m1;
  var s2_ex5_m2;
  var s2_ex5_m3;
  var s2_ex5_m4;
  var s2_ex5_m5;
  var s2_ex5_m6;
  var s2_ex5_m7;

  var s3_ex1_m1;
  var s3_ex1_m2;
  var s3_ex1_m3;
  var s3_ex1_m4;
  var s3_ex1_m5;
  var s3_ex1_m6;
  var s3_ex1_m7;
  //sem2_exam2
  var s3_ex2_m1;
  var s3_ex2_m2;
  var s3_ex2_m3;
  var s3_ex2_m4;
  var s3_ex2_m5;
  var s3_ex2_m6;
  var s3_ex2_m7;
  //sem2_exam3
  var s3_ex3_m1;
  var s3_ex3_m2;
  var s3_ex3_m3;
  var s3_ex3_m4;
  var s3_ex3_m5;
  var s3_ex3_m6;
  var s3_ex3_m7;
  //sem2_exam4
  var s3_ex4_m1;
  var s3_ex4_m2;
  var s3_ex4_m3;
  var s3_ex4_m4;
  var s3_ex4_m5;
  var s3_ex4_m6;
  var s3_ex4_m7;

  //sem2_exam5
  var s3_ex5_m1;
  var s3_ex5_m2;
  var s3_ex5_m3;
  var s3_ex5_m4;
  var s3_ex5_m5;
  var s3_ex5_m6;
  var s3_ex5_m7;

  var s4_ex1_m1;
  var s4_ex1_m2;
  var s4_ex1_m3;
  var s4_ex1_m4;
  var s4_ex1_m5;
  var s4_ex1_m6;
  var s4_ex1_m7;
  //sem4_exam2
  var s4_ex2_m1;
  var s4_ex2_m2;
  var s4_ex2_m3;
  var s4_ex2_m4;
  var s4_ex2_m5;
  var s4_ex2_m6;
  var s4_ex2_m7;
  //sem4_exam3
  var s4_ex3_m1;
  var s4_ex3_m2;
  var s4_ex3_m3;
  var s4_ex3_m4;
  var s4_ex3_m5;
  var s4_ex3_m6;
  var s4_ex3_m7;
  //sem4_exam4
  var s4_ex4_m1;
  var s4_ex4_m2;
  var s4_ex4_m3;
  var s4_ex4_m4;
  var s4_ex4_m5;
  var s4_ex4_m6;
  var s4_ex4_m7;

  //sem4_exam5
  var s4_ex5_m1;
  var s4_ex5_m2;
  var s4_ex5_m3;
  var s4_ex5_m4;
  var s4_ex5_m5;
  var s4_ex5_m6;
  var s4_ex5_m7;

  var s5_ex1_m1;
  var s5_ex1_m2;
  var s5_ex1_m3;
  var s5_ex1_m4;
  var s5_ex1_m5;
  var s5_ex1_m6;
  var s5_ex1_m7;
  //sem5_exam2
  var s5_ex2_m1;
  var s5_ex2_m2;
  var s5_ex2_m3;
  var s5_ex2_m4;
  var s5_ex2_m5;
  var s5_ex2_m6;
  var s5_ex2_m7;
  //sem5_exam3
  var s5_ex3_m1;
  var s5_ex3_m2;
  var s5_ex3_m3;
  var s5_ex3_m4;
  var s5_ex3_m5;
  var s5_ex3_m6;
  var s5_ex3_m7;
  //sem5_exam4;
  var s5_ex4_m1;
  var s5_ex4_m2;
  var s5_ex4_m3;
  var s5_ex4_m4;
  var s5_ex4_m5;
  var s5_ex4_m6;
  var s5_ex4_m7;

  //sem5_exam5
  var s5_ex5_m1;
  var s5_ex5_m2;
  var s5_ex5_m3;
  var s5_ex5_m4;
  var s5_ex5_m5;
  var s5_ex5_m6;
  var s5_ex5_m7;

  //sem6_exam1
  var s6_ex1_m1;
  var s6_ex1_m2;
  var s6_ex1_m3;
  var s6_ex1_m4;
  var s6_ex1_m5;
  var s6_ex1_m6;
  var s6_ex1_m7;
  //sem6_exam2
  var s6_ex2_m1;
  var s6_ex2_m2;
  var s6_ex2_m3;
  var s6_ex2_m4;
  var s6_ex2_m5;
  var s6_ex2_m6;
  var s6_ex2_m7;
  //sem6_exam3;
  var s6_ex3_m1;
  var s6_ex3_m2;
  var s6_ex3_m3;
  var s6_ex3_m4;
  var s6_ex3_m5;
  var s6_ex3_m6;
  var s6_ex3_m7;
  //sem6_exam4;
  var s6_ex4_m1;
  var s6_ex4_m2;
  var s6_ex4_m3;
  var s6_ex4_m4;
  var s6_ex4_m5;
  var s6_ex4_m6;
  var s6_ex4_m7;
  //sem6_exam5
  var s6_ex5_m1;
  var s6_ex5_m2;
  var s6_ex5_m3;
  var s6_ex5_m4;
  var s6_ex5_m5;
  var s6_ex5_m6;
  var s6_ex5_m7;
  var imagepdf;

  Future<void> deleteUser(id) {
    return students
        .doc(id)
        .delete()
        .then((value) => showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text("Status",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                content: const Text("Delete Successfully"),
                actions: <Widget>[
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(ctx).pop();
                      Navigator.pop(context, desktopview(context, id: id));
                    },
                    child: const Text(
                      "OK",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ))
        .catchError((error) => print('Failed to Delete user: $error'));
  }

  Future<void> alert() async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Status",
          style: GoogleFonts.poppins(
              color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        content: Text(
          "If You Want Delete?",
          style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Row(children: [
            const SizedBox(width: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                FirebaseStorage.instance
                    .refFromURL(image.toString())
                    .delete()
                    .whenComplete(() => deleteUser(widget.id)
                        .whenComplete(() => Navigator.of(ctx).pop()));
              },
              child: const Text("YES"),
            ),
            const SizedBox(width: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: const Text("No"),
            ),
          ])
        ],
      ),
    );
  }

  void pick() async {
    var img = await ImagePickerWeb.getImageAsBytes();
    Reference _reference =
        FirebaseStorage.instance.ref().child('Photo/CA/$Roll_no');
    await _reference
        .putData(
      img!,
    )
        .whenComplete(() async {
      await _reference.getDownloadURL().then((value) {
        setState(() {
          image = value;
          pic = image;
        });
        print(value);
      });
    });
  }

  Future<void> updateUser(
      id,
      name,
      dob,
      Nation,
      F_name,
      M_name,
      R_address,
      Roll_num,
      Gender,
      Blood_Group,
      Occupation,
      M_no,
      e_mail,
      busstop,
      Community,
      Hosteller,
      Aadhar,
      HSC,
      HSC_MARK,
      HSC_BOARD,
      SSLC,
      SSLC_MARK,
      SSLC_BOARD,
      pic) {
    return students
        .doc(id)
        .update({
          'Name': name,
          'Date Of Birth': dob,
          'nationality': Nation,
          "Father's Name": F_name,
          "Mother's Name": M_name,
          'Residential Address': R_address,
          'Roll No': Roll_num,
          'Gender': Gender,
          'Blood Group': Blood_Group,
          'occupation': Occupation,
          'Mobile Number': M_no,
          'Community': Community,
          'Hosteller': Hosteller,
          'aadhar Number': Aadhar,
          'HSC': HSC_BOARD,
          'HSCMark': HSC_MARK,
          'HSCSchool': HSC,
          'SSLC': SSLC_BOARD,
          'SSLCMark': SSLC_MARK,
          'SSLCSchool': SSLC,
          'Url': image,
          'Bus Stop': busstop,
          'email': e_mail
        })
        .then((value) => showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text("Alert",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                content: const Text("Updated Successfully"),
                actions: <Widget>[
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(ctx).pop();
                      Navigator.pop(context, desktopview(context, id: id));
                    },
                    child: const Text(
                      "OK",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ))
        .catchError((error) => print("Failed to update user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 980) {
        return mobile(context);
      } else if (constraints.maxWidth < 1250) {
        return Desktop(context);
      } else {
        return Desktop(context);
      }
    });
  }

  var name;
  Scaffold Desktop(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Update Student"),
          actions: [
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "Update Semester Details",
                    style: TextStyle(fontSize: 18),
                  )),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => update_table(
                              context,
                              id: widget.id,
                            )));
              },
            )
          ],
        ),
        body: Form(
            key: _formKey,
            child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                future: FirebaseFirestore.instance
                    .collection('user')
                    .doc(widget.id)
                    .get()
                    .catchError((onError) {
                  return const Scaffold();
                }),
                builder: (_, snapshot) {
                  if (snapshot.hasError) {
                    return const Scaffold();
                  } else if (snapshot.data == null) {
                    return const Scaffold(
                        body: Center(
                            child:
                                CircularProgressIndicator(color: Colors.red)));
                  } else if (snapshot.requireData.exists == false) {
                    return Scaffold(
                        body: Center(
                            child: Text("No Data Found",
                                style: GoogleFonts.adamina(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            30))));
                  }

                  var data = snapshot.data!.data();

                  if (!changed) {
                    dob = data!['Date Of Birth'];
                    dateob = dob;
                    // ignore: non_constant_identifier_names
                    Nation = data['nationality'];
                    F_name = data["Father's Name"];
                    M_name = data["Mother's Name"];
                    R_address = data['Residential Address'];
                    Roll_no = data['Roll No'];
                    Gender = data['Gender'];
                    Gende = Gender;
                    name = data['Name'];
                    Hosteller = data['Hosteller'];
                    Hostel = Hosteller;
                    Blood_Group = data['Blood Group'];
                    Occupation = data['occupation'];
                    busstop = data['Bus Stop'];
                    e_mail = data['email'];
                    M_no = data['Mobile Number'];

                    Community = data['Community'];
                    Aadhar = data['aadhar Number'];
                    HSC = data['HSCSchool'];
                    HSC_MARK = data['HSCMark'];
                    HSC_BOARD = data['HSC'];
                    SSLC = data['SSLCSchool'];
                    SSLC_MARK = data['SSLCMark'];
                    SSLC_BOARD = data['SSLC'];
                    image = data['Url'];
                    sem1 = data['SEMESTER 1 EXAM 1 Mark1'];
                    s1_ex1_m2 = data['SEMESTER 1 EXAM 1 Mark2'];
                    s1_ex1_m3 = data['SEMESTER 1 EXAM 1 Mark3'];
                    s1_ex1_m4 = data['SEMESTER 1 EXAM 1 Mark4'];
                    s1_ex1_m5 = data['SEMESTER 1 EXAM 1 Mark5'];
                    s1_ex1_m6 = data['SEMESTER 1 EXAM 1 Mark6'];
                    s1_ex1_m7 = data['SEMESTER 1 EXAM 1 Mark7'];

                    s1_ex2_m1 = data['SEMESTER 1 EXAM 2 Mark1'];
                    s1_ex2_m2 = data['SEMESTER 1 EXAM 2 Mark2'];
                    s1_ex2_m3 = data['SEMESTER 1 EXAM 2 Mark3'];
                    s1_ex2_m4 = data['SEMESTER 1 EXAM 2 Mark4'];
                    s1_ex2_m5 = data['SEMESTER 1 EXAM 2 Mark5'];
                    s1_ex2_m6 = data['SEMESTER 1 EXAM 2 Mark6'];
                    s1_ex2_m7 = data['SEMESTER 1 EXAM 2 Mark7'];

                    s1_ex3_m1 = data['SEMESTER 1 EXAM 3 Mark1'];
                    s1_ex3_m2 = data['SEMESTER 1 EXAM 3 Mark2'];
                    s1_ex3_m3 = data['SEMESTER 1 EXAM 3 Mark3'];
                    s1_ex3_m4 = data['SEMESTER 1 EXAM 3 Mark4'];
                    s1_ex3_m5 = data['SEMESTER 1 EXAM 3 Mark5'];
                    s1_ex3_m6 = data['SEMESTER 1 EXAM 3 Mark6'];
                    s1_ex3_m7 = data['SEMESTER 1 EXAM 3 Mark7'];
                    //sem1_exam4
                    s1_ex4_m1 = data['SEMESTER 1 EXAM 4 Mark1'];
                    s1_ex4_m2 = data['SEMESTER 1 EXAM 4 Mark2'];
                    s1_ex4_m3 = data['SEMESTER 1 EXAM 4 Mark3'];
                    s1_ex4_m4 = data['SEMESTER 1 EXAM 4 Mark4'];
                    s1_ex4_m5 = data['SEMESTER 1 EXAM 4 Mark5'];
                    s1_ex4_m6 = data['SEMESTER 1 EXAM 4 Mark6'];
                    s1_ex4_m7 = data['SEMESTER 1 EXAM 4 Mark7'];

                    //sem1_exam5
                    s1_ex5_m1 = data['SEMESTER 1 EXAM 5 Mark1'];
                    s1_ex5_m2 = data['SEMESTER 1 EXAM 5 Mark2'];
                    s1_ex5_m3 = data['SEMESTER 1 EXAM 5 Mark3'];
                    s1_ex5_m4 = data['SEMESTER 1 EXAM 5 Mark4'];
                    s1_ex5_m5 = data['SEMESTER 1 EXAM 5 Mark5'];
                    s1_ex5_m6 = data['SEMESTER 1 EXAM 5 Mark6'];
                    s1_ex5_m7 = data['SEMESTER 1 EXAM 5 Mark7'];

                    s2_ex1_m1 = data['SEMESTER 2 EXAM 1 Mark1'];
                    s2_ex1_m2 = data['SEMESTER 2 EXAM 1 Mark2'];
                    s2_ex1_m3 = data['SEMESTER 2 EXAM 1 Mark3'];
                    s2_ex1_m4 = data['SEMESTER 2 EXAM 1 Mark4'];
                    s2_ex1_m5 = data['SEMESTER 2 EXAM 1 Mark5'];
                    s2_ex1_m6 = data['SEMESTER 2 EXAM 1 Mark6'];
                    s2_ex1_m7 = data['SEMESTER 2 EXAM 1 Mark7'];
                    //sem2_exam2
                    s2_ex2_m1 = data['SEMESTER 2 EXAM 2 Mark1'];
                    s2_ex2_m2 = data['SEMESTER 2 EXAM 2 Mark2'];
                    s2_ex2_m3 = data['SEMESTER 2 EXAM 2 Mark3'];
                    s2_ex2_m4 = data['SEMESTER 2 EXAM 2 Mark4'];
                    s2_ex2_m5 = data['SEMESTER 2 EXAM 2 Mark5'];
                    s2_ex2_m6 = data['SEMESTER 2 EXAM 2 Mark6'];
                    s2_ex2_m7 = data['SEMESTER 2 EXAM 2 Mark7'];
                    //sem2_exam3
                    s2_ex3_m1 = data['SEMESTER 2 EXAM 3 Mark1'];
                    s2_ex3_m2 = data['SEMESTER 2 EXAM 3 Mark2'];
                    s2_ex3_m3 = data['SEMESTER 2 EXAM 3 Mark3'];
                    s2_ex3_m4 = data['SEMESTER 2 EXAM 3 Mark4'];
                    s2_ex3_m5 = data['SEMESTER 2 EXAM 3 Mark5'];
                    s2_ex3_m6 = data['SEMESTER 2 EXAM 3 Mark6'];
                    s2_ex3_m7 = data['SEMESTER 2 EXAM 3 Mark7'];
                    //sem2_exam4
                    s2_ex4_m1 = data['SEMESTER 2 EXAM 4 Mark1'];
                    s2_ex4_m2 = data['SEMESTER 2 EXAM 4 Mark2'];
                    s2_ex4_m3 = data['SEMESTER 2 EXAM 4 Mark3'];
                    s2_ex4_m4 = data['SEMESTER 2 EXAM 4 Mark4'];
                    s2_ex4_m5 = data['SEMESTER 2 EXAM 4 Mark5'];
                    s2_ex4_m6 = data['SEMESTER 2 EXAM 4 Mark6'];
                    s2_ex4_m7 = data['SEMESTER 2 EXAM 4 Mark7'];

                    //sem2_exam5
                    s2_ex5_m1 = data['SEMESTER 2 EXAM 5 Mark1'];
                    s2_ex5_m2 = data['SEMESTER 2 EXAM 5 Mark2'];
                    s2_ex5_m3 = data['SEMESTER 2 EXAM 5 Mark3'];
                    s2_ex5_m4 = data['SEMESTER 2 EXAM 5 Mark4'];
                    s2_ex5_m5 = data['SEMESTER 2 EXAM 5 Mark5'];
                    s2_ex5_m6 = data['SEMESTER 2 EXAM 5 Mark6'];
                    s2_ex5_m7 = data['SEMESTER 2 EXAM 5 Mark7'];

                    //sem3_exam1
                    s3_ex1_m1 = data['SEMESTER 3 EXAM 1 Mark1'];
                    s3_ex1_m2 = data['SEMESTER 3 EXAM 1 Mark2'];
                    s3_ex1_m3 = data['SEMESTER 3 EXAM 1 Mark3'];
                    s3_ex1_m4 = data['SEMESTER 3 EXAM 1 Mark4'];
                    s3_ex1_m5 = data['SEMESTER 3 EXAM 1 Mark5'];
                    s3_ex1_m6 = data['SEMESTER 3 EXAM 1 Mark6'];
                    s3_ex1_m7 = data['SEMESTER 3 EXAM 1 Mark7'];
                    //sem3_exam2
                    s3_ex2_m1 = data['SEMESTER 3 EXAM 2 Mark1'];
                    s3_ex2_m2 = data['SEMESTER 3 EXAM 2 Mark2'];
                    s3_ex2_m3 = data['SEMESTER 3 EXAM 2 Mark3'];
                    s3_ex2_m4 = data['SEMESTER 3 EXAM 2 Mark4'];
                    s3_ex2_m5 = data['SEMESTER 3 EXAM 2 Mark5'];
                    s3_ex2_m6 = data['SEMESTER 3 EXAM 2 Mark6'];
                    s3_ex2_m7 = data['SEMESTER 3 EXAM 2 Mark7'];
                    //sem3_exam3
                    s3_ex3_m1 = data['SEMESTER 3 EXAM 3 Mark1'];
                    s3_ex3_m2 = data['SEMESTER 3 EXAM 3 Mark2'];
                    s3_ex3_m3 = data['SEMESTER 3 EXAM 3 Mark3'];
                    s3_ex3_m4 = data['SEMESTER 3 EXAM 3 Mark4'];
                    s3_ex3_m5 = data['SEMESTER 3 EXAM 3 Mark5'];
                    s3_ex3_m6 = data['SEMESTER 3 EXAM 3 Mark6'];
                    s3_ex3_m7 = data['SEMESTER 3 EXAM 3 Mark7'];
                    //sem3_exam4
                    s3_ex4_m1 = data['SEMESTER 3 EXAM 4 Mark1'];
                    s3_ex4_m2 = data['SEMESTER 3 EXAM 4 Mark2'];
                    s3_ex4_m3 = data['SEMESTER 3 EXAM 4 Mark3'];
                    s3_ex4_m4 = data['SEMESTER 3 EXAM 4 Mark4'];
                    s3_ex4_m5 = data['SEMESTER 3 EXAM 4 Mark5'];
                    s3_ex4_m6 = data['SEMESTER 3 EXAM 4 Mark6'];
                    s3_ex4_m7 = data['SEMESTER 3 EXAM 4 Mark7'];

                    //sem3_exam5
                    s3_ex5_m1 = data['SEMESTER 3 EXAM 5 Mark1'];
                    s3_ex5_m2 = data['SEMESTER 3 EXAM 5 Mark2'];
                    s3_ex5_m3 = data['SEMESTER 3 EXAM 5 Mark3'];
                    s3_ex5_m4 = data['SEMESTER 3 EXAM 5 Mark4'];
                    s3_ex5_m5 = data['SEMESTER 3 EXAM 5 Mark5'];
                    s3_ex5_m6 = data['SEMESTER 3 EXAM 5 Mark6'];
                    s3_ex5_m7 = data['SEMESTER 3 EXAM 5 Mark7'];

                    s4_ex1_m1 = data!['SEMESTER 4 EXAM 1 Mark1'];
                    s4_ex1_m2 = data['SEMESTER 4 EXAM 1 Mark2'];
                    s4_ex1_m3 = data['SEMESTER 4 EXAM 1 Mark3'];
                    s4_ex1_m4 = data['SEMESTER 4 EXAM 1 Mark4'];
                    s4_ex1_m5 = data['SEMESTER 4 EXAM 1 Mark5'];
                    s4_ex1_m6 = data['SEMESTER 4 EXAM 1 Mark6'];
                    s4_ex1_m7 = data['SEMESTER 4 EXAM 1 Mark7'];
                    //sem4_exam2
                    s4_ex2_m1 = data['SEMESTER 4 EXAM 2 Mark1'];
                    s4_ex2_m2 = data['SEMESTER 4 EXAM 2 Mark2'];
                    s4_ex2_m3 = data['SEMESTER 4 EXAM 2 Mark3'];
                    s4_ex2_m4 = data['SEMESTER 4 EXAM 2 Mark4'];
                    s4_ex2_m5 = data['SEMESTER 4 EXAM 2 Mark5'];
                    s4_ex2_m6 = data['SEMESTER 4 EXAM 2 Mark6'];
                    s4_ex2_m7 = data['SEMESTER 4 EXAM 2 Mark7'];
                    //sem4_exam3
                    s4_ex3_m1 = data['SEMESTER 4 EXAM 3 Mark1'];
                    s4_ex3_m2 = data['SEMESTER 4 EXAM 3 Mark2'];
                    s4_ex3_m3 = data['SEMESTER 4 EXAM 3 Mark3'];
                    s4_ex3_m4 = data['SEMESTER 4 EXAM 3 Mark4'];
                    s4_ex3_m5 = data['SEMESTER 4 EXAM 3 Mark5'];
                    s4_ex3_m6 = data['SEMESTER 4 EXAM 3 Mark6'];
                    s4_ex3_m7 = data['SEMESTER 4 EXAM 3 Mark7'];
                    //sem4_exam4
                    s4_ex4_m1 = data['SEMESTER 4 EXAM 4 Mark1'];
                    s4_ex4_m2 = data['SEMESTER 4 EXAM 4 Mark2'];
                    s4_ex4_m3 = data['SEMESTER 4 EXAM 4 Mark3'];
                    s4_ex4_m4 = data['SEMESTER 4 EXAM 4 Mark4'];
                    s4_ex4_m5 = data['SEMESTER 4 EXAM 4 Mark5'];
                    s4_ex4_m6 = data['SEMESTER 4 EXAM 4 Mark6'];
                    s4_ex4_m7 = data['SEMESTER 4 EXAM 4 Mark7'];

                    //sem4_exam5
                    s4_ex5_m1 = data['SEMESTER 4 EXAM 5 Mark1'];
                    s4_ex5_m2 = data['SEMESTER 4 EXAM 5 Mark2'];
                    s4_ex5_m3 = data['SEMESTER 4 EXAM 5 Mark3'];
                    s4_ex5_m4 = data['SEMESTER 4 EXAM 5 Mark4'];
                    s4_ex5_m5 = data['SEMESTER 4 EXAM 5 Mark5'];
                    s4_ex5_m6 = data['SEMESTER 4 EXAM 5 Mark6'];
                    s4_ex5_m7 = data['SEMESTER 4 EXAM 5 Mark7'];

                    s5_ex1_m1 = data!['SEMESTER 5 EXAM 1 Mark1'];
                    s5_ex1_m2 = data['SEMESTER 5 EXAM 1 Mark2'];
                    s5_ex1_m3 = data['SEMESTER 5 EXAM 1 Mark3'];
                    s5_ex1_m4 = data['SEMESTER 5 EXAM 1 Mark4'];
                    s5_ex1_m5 = data['SEMESTER 5 EXAM 1 Mark5'];
                    s5_ex1_m6 = data['SEMESTER 5 EXAM 1 Mark6'];
                    s5_ex1_m7 = data['SEMESTER 5 EXAM 1 Mark7'];
                    //sem5_exam2
                    s5_ex2_m1 = data['SEMESTER 5 EXAM 2 Mark1'];
                    s5_ex2_m2 = data['SEMESTER 5 EXAM 2 Mark2'];
                    s5_ex2_m3 = data['SEMESTER 5 EXAM 2 Mark3'];
                    s5_ex2_m4 = data['SEMESTER 5 EXAM 2 Mark4'];
                    s5_ex2_m5 = data['SEMESTER 5 EXAM 2 Mark5'];
                    s5_ex2_m6 = data['SEMESTER 5 EXAM 2 Mark6'];
                    s5_ex2_m7 = data['SEMESTER 5 EXAM 2 Mark7'];
                    //sem5_exam3
                    s5_ex3_m1 = data['SEMESTER 5 EXAM 3 Mark1'];
                    s5_ex3_m2 = data['SEMESTER 5 EXAM 3 Mark2'];
                    s5_ex3_m3 = data['SEMESTER 5 EXAM 3 Mark3'];
                    s5_ex3_m4 = data['SEMESTER 5 EXAM 3 Mark4'];
                    s5_ex3_m5 = data['SEMESTER 5 EXAM 3 Mark5'];
                    s5_ex3_m6 = data['SEMESTER 5 EXAM 3 Mark6'];
                    s5_ex3_m7 = data['SEMESTER 5 EXAM 3 Mark7'];
                    //sem5_exam4
                    s5_ex4_m1 = data['SEMESTER 5 EXAM 4 Mark1'];
                    s5_ex4_m2 = data['SEMESTER 5 EXAM 4 Mark2'];
                    s5_ex4_m3 = data['SEMESTER 5 EXAM 4 Mark3'];
                    s5_ex4_m4 = data['SEMESTER 5 EXAM 4 Mark4'];
                    s5_ex4_m5 = data['SEMESTER 5 EXAM 4 Mark5'];
                    s5_ex4_m6 = data['SEMESTER 5 EXAM 4 Mark6'];
                    s5_ex4_m7 = data['SEMESTER 5 EXAM 4 Mark7'];

                    //sem5_exam5
                    s5_ex5_m1 = data['SEMESTER 5 EXAM 5 Mark1'];
                    s5_ex5_m2 = data['SEMESTER 5 EXAM 5 Mark2'];
                    s5_ex5_m3 = data['SEMESTER 5 EXAM 5 Mark3'];
                    s5_ex5_m4 = data['SEMESTER 5 EXAM 5 Mark4'];
                    s5_ex5_m5 = data['SEMESTER 5 EXAM 5 Mark5'];
                    s5_ex5_m6 = data['SEMESTER 5 EXAM 5 Mark6'];
                    s5_ex5_m7 = data['SEMESTER 5 EXAM 5 Mark7'];

                    //sem6_exam1
                    s6_ex1_m1 = data!['SEMESTER 6 EXAM 1 Mark1'];
                    s6_ex1_m2 = data['SEMESTER 6 EXAM 1 Mark2'];
                    s6_ex1_m3 = data['SEMESTER 6 EXAM 1 Mark3'];
                    s6_ex1_m4 = data['SEMESTER 6 EXAM 1 Mark4'];
                    s6_ex1_m5 = data['SEMESTER 6 EXAM 1 Mark5'];
                    s6_ex1_m6 = data['SEMESTER 6 EXAM 1 Mark6'];
                    s6_ex1_m7 = data['SEMESTER 6 EXAM 1 Mark7'];
                    //sem6_exam2
                    s6_ex2_m1 = data['SEMESTER 6 EXAM 2 Mark1'];
                    s6_ex2_m2 = data['SEMESTER 6 EXAM 2 Mark2'];
                    s6_ex2_m3 = data['SEMESTER 6 EXAM 2 Mark3'];
                    s6_ex2_m4 = data['SEMESTER 6 EXAM 2 Mark4'];
                    s6_ex2_m5 = data['SEMESTER 6 EXAM 2 Mark5'];
                    s6_ex2_m6 = data['SEMESTER 6 EXAM 2 Mark6'];
                    s6_ex2_m7 = data['SEMESTER 6 EXAM 2 Mark7'];
                    //sem6_exam3
                    s6_ex3_m1 = data['SEMESTER 6 EXAM 3 Mark1'];
                    s6_ex3_m2 = data['SEMESTER 6 EXAM 3 Mark2'];
                    s6_ex3_m3 = data['SEMESTER 6 EXAM 3 Mark3'];
                    s6_ex3_m4 = data['SEMESTER 6 EXAM 3 Mark4'];
                    s6_ex3_m5 = data['SEMESTER 6 EXAM 3 Mark5'];
                    s6_ex3_m6 = data['SEMESTER 6 EXAM 3 Mark6'];
                    s6_ex3_m7 = data['SEMESTER 6 EXAM 3 Mark7'];
                    //sem6_exam4
                    s6_ex4_m1 = data['SEMESTER 6 EXAM 4 Mark1'];
                    s6_ex4_m2 = data['SEMESTER 6 EXAM 4 Mark2'];
                    s6_ex4_m3 = data['SEMESTER 6 EXAM 4 Mark3'];
                    s6_ex4_m4 = data['SEMESTER 6 EXAM 4 Mark4'];
                    s6_ex4_m5 = data['SEMESTER 6 EXAM 4 Mark5'];
                    s6_ex4_m6 = data['SEMESTER 6 EXAM 4 Mark6'];
                    s6_ex4_m7 = data['SEMESTER 6 EXAM 4 Mark7'];

                    //sem6_exam5
                    s6_ex5_m1 = data['SEMESTER 6 EXAM 5 Mark1'];
                    s6_ex5_m2 = data['SEMESTER 6 EXAM 5 Mark2'];
                    s6_ex5_m3 = data['SEMESTER 6 EXAM 5 Mark3'];
                    s6_ex5_m4 = data['SEMESTER 6 EXAM 5 Mark4'];
                    s6_ex5_m5 = data['SEMESTER 6 EXAM 5 Mark5'];
                    s6_ex5_m6 = data['SEMESTER 6 EXAM 5 Mark6'];
                    s6_ex5_m7 = data['SEMESTER 6 EXAM 5 Mark7'];

                    changed = true;
                  }

                  var ite = [
                    'Hosteller',
                    'Dayscholar',
                  ];

                  var itemsS = [
                    'Male',
                    'Female',
                    // 'Others',
                  ];
                  var communities = [
                    "BC",
                    "OC",
                    "MBC",
                    "DNC",
                    "SC",
                    "ST",
                    "BCM",
                    "Other"
                  ];
                  return SingleChildScrollView(
                      child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Color.fromARGB(255, 227, 227, 227))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.only(
                            top: 30, left: 40, right: 40, bottom: 30),
                        margin: const EdgeInsets.only(top: 30, bottom: 30),
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Column(children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: const Offset(0, 5),
                                      )
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(image),
                                    radius: MediaQuery.of(context).size.width *
                                        0.07,
                                    backgroundColor: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () async {
                                    pick();
                                    print(image);
                                  },
                                  icon: const Icon(Icons.edit))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Personal Details",
                              style: GoogleFonts.robotoSlab(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                  child: Flexible(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text("Name:"),
                                    contentPadding: EdgeInsets.only(left: 5),
                                    labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue),
                                    suffixIcon: Icon(Icons.person,
                                        color:
                                            Color.fromARGB(255, 213, 0, 142)),
                                  ),
                                  initialValue: name,
                                  onChanged: (value) => name = value,
                                  cursorColor: Colors.blue,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Name';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                  child: Flexible(
                                // ignore: sort_child_properties_last
                                child: TextFormField(
                                  initialValue: dob,
                                  decoration: const InputDecoration(
                                    label: Text("Date of Birth"),
                                    contentPadding: EdgeInsets.only(left: 5),
                                    labelStyle: TextStyle(
                                      height: 0.99,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),
                                    suffixIcon: Icon(Icons.date_range_sharp,
                                        color: Color.fromARGB(255, 148, 50, 8)),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter D.O.B';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    setState() {
                                      dob = value;
                                    }
                                  },
                                ),
                              )),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                  child: Flexible(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    label: Text("Nationality"),
                                    contentPadding: EdgeInsets.only(left: 5),
                                    labelStyle: TextStyle(
                                      height: 0.99,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.flag_sharp,
                                      color: Color.fromARGB(255, 36, 17, 144),
                                    ),
                                  ),
                                  initialValue: Nation,
                                  onChanged: (value) => Nation = value,
                                  cursorColor: Colors.blue,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Nationality';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Father's Name"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 119, 1, 254),
                                      ),
                                    ),
                                    initialValue: F_name,
                                    onChanged: (value) => F_name = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Father's Name";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Mother's Name"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 3, 216, 149),
                                      ),
                                    ),
                                    initialValue: M_name,
                                    onChanged: (value) => M_name = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Mother's Name";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Residential Address"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.location_on_sharp,
                                        color: Color.fromARGB(255, 240, 4, 153),
                                      ),
                                    ),
                                    initialValue: R_address,
                                    onChanged: (value) => R_address = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Residential Address';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    readOnly: true,
                                    decoration: const InputDecoration(
                                      label: Text("Register No"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.album_sharp,
                                        color: Color.fromARGB(255, 4, 127, 193),
                                      ),
                                    ),
                                    initialValue: Roll_no,
                                    onChanged: (value) => Roll_no = value,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Roll No';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: Gende,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: itemsS.map((String itemess) {
                                      return DropdownMenuItem(
                                        value: itemess,
                                        child: Text(itemess),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValuess) {
                                      setState(() {
                                        Gende = newValuess!;
                                        Gender = Gende;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Blood Group"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.bloodtype_sharp,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                      ),
                                    ),
                                    initialValue: Blood_Group,
                                    onChanged: (value) => Blood_Group = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Blood Group';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text(
                                          "Father's / Mother's Occupation"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.work,
                                        color:
                                            Color.fromARGB(255, 255, 136, 33),
                                      ),
                                    ),
                                    initialValue: Occupation,
                                    onChanged: (value) => Occupation = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Father's / Mother'S Occupation";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Bus Stop"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.bus_alert,
                                        color:
                                            Color.fromARGB(255, 255, 136, 33),
                                      ),
                                    ),
                                    initialValue: busstop,
                                    onChanged: (value) => busstop = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please Enter Bus Stop";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Contact No."),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.call_outlined,
                                        color: Color.fromARGB(255, 0, 177, 252),
                                      ),
                                    ),
                                    initialValue: M_no,
                                    onChanged: (value) => M_no = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Contact No.';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Email"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 33, 131, 243),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.email,
                                        color: Color.fromARGB(255, 255, 204, 2),
                                      ),
                                    ),
                                    initialValue: e_mail,
                                    onChanged: (value) => e_mail = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Email';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Community"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.date_range_sharp,
                                        color:
                                            Color.fromARGB(255, 33, 243, 194),
                                      ),
                                    ),
                                    initialValue: Community,
                                    onChanged: (value) => Community = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Community';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              // Container(
                              //   width: MediaQuery.of(context).size.width,
                              //   child: DropdownButton(

                              //     value: community,
                              //     isExpanded: true,

                              //     icon: const Icon(Icons.keyboard_arrow_down),
                              //     hint: Text("Not Selected"),
                              //     items: communities.map((String items) {
                              //       return DropdownMenuItem(
                              //         value: items,
                              //         child: Text(items),
                              //       );
                              //     }).toList(),
                              //     onChanged: (value) {
                              //       setState(() {
                              //         Community = value;

                              //         print(community);
                              //       });
                              //     },
                              //   ),
                              // ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Flexible(
                                child: DropdownButton(
                                  isExpanded: true,
                                  value: Hostel,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: ite.map((String it) {
                                    return DropdownMenuItem(
                                      value: it,
                                      child: Text(it),
                                    );
                                  }).toList(),
                                  onChanged: (String? val) {
                                    setState(() {
                                      Hostel = val!;
                                      Hosteller = Hostel;
                                      print(Hosteller);
                                      // students.doc(widget.id).update({
                                      //   "Name": name,
                                      //   "Gender": Gender
                                      // });
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 270.0,
                                child: Container(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Aadhar.No"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.document_scanner_outlined,
                                        color: Color.fromARGB(255, 159, 253, 7),
                                      ),
                                    ),
                                    initialValue: Aadhar,
                                    onChanged: (value) => Aadhar = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Aadhar Number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          const Divider(
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                          const SizedBox(height: 20),
                          Text("Academic Details",
                              style: GoogleFonts.robotoSlab(
                                  color: const Color.fromARGB(255, 8, 0, 247),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("10th Mark"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.percent_sharp,
                                        color: Color.fromARGB(224, 13, 1, 6),
                                      ),
                                    ),
                                    initialValue: SSLC_MARK,
                                    onChanged: (value) => SSLC_MARK = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter 10th Mark';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("School"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.school,
                                        color: Color(0xffabcdef),
                                      ),
                                    ),
                                    initialValue: SSLC,
                                    onChanged: (value) => SSLC = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter School';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("10th Mark"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      // ignore: unnecessary_const
                                      labelStyle: const TextStyle(
                                        height: 0.99,
                                        fontSize: 20,
                                        color: Colors.blue,
                                      ),
                                      // ignore: unnecessary_const
                                      suffixIcon: const Icon(
                                        Icons.school_outlined,
                                        color: Color.fromARGB(255, 38, 91, 56),
                                      ),
                                    ),
                                    initialValue: SSLC_BOARD,
                                    onChanged: (value) => SSLC_BOARD = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter 10th Mark';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("12th Mark"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                        height: 0.99,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.percent_outlined,
                                        color:
                                            Color.fromARGB(197, 243, 124, 33),
                                      ),
                                    ),
                                    initialValue: HSC_MARK,
                                    onChanged: (value) => HSC_MARK = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter 12th Mark';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("School"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                        height: 0.99,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.school_sharp,
                                        color:
                                            Color.fromARGB(255, 127, 15, 197),
                                      ),
                                    ),
                                    initialValue: HSC,
                                    onChanged: (value) => HSC = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter School';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("12th Board"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        fontSize: 20,
                                        height: 0.99,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.school_outlined,
                                        color: Color.fromARGB(86, 173, 243, 33),
                                      ),
                                    ),
                                    initialValue: HSC_BOARD,
                                    onChanged: (value) => HSC_BOARD = value,
                                    cursorColor: Colors.blue,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter 12th Board';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 34,
                          ),
                          sem_1_widget(context,
                              header: "Semester I", id: widget.id),
                          sem_2_widget(context,
                              header: "Semester II", id: widget.id),
                          sem_3_widget(context,
                              header: "Semester III", id: widget.id),
                          sem_4_widget(context,
                              header: "Semester IV", id: widget.id),
                          sem_5_widget(context,
                              header: "Semester V", id: widget.id),
                          sem_6_widget(context,
                              header: "Semester VI", id: widget.id),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Total"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      // ignore: unnecessary_const
                                      labelStyle: const TextStyle(
                                        fontSize: 15,
                                        height: 0.99,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.grading_outlined,
                                        color:
                                            Color.fromARGB(197, 243, 124, 33),
                                      ),
                                    ),
                                    cursorColor: Colors.blue,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Mark"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        fontSize: 15,
                                        height: 0.99,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.leaderboard,
                                        color:
                                            Color.fromARGB(255, 127, 15, 197),
                                      ),
                                    ),
                                    cursorColor: Colors.blue,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Class"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        fontSize: 15,
                                        height: 0.99,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.star_outline_sharp,
                                        color: Color.fromARGB(248, 249, 27, 27),
                                      ),
                                    ),
                                    cursorColor: Colors.blue,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Container(
                                child: Flexible(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      label: Text("Year of Passing"),
                                      contentPadding: EdgeInsets.only(left: 5),
                                      labelStyle: TextStyle(
                                        fontSize: 15,
                                        height: 0.99,
                                        color: Colors.blue,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.date_range_sharp,
                                        color: Color.fromARGB(234, 3, 90, 183),
                                      ),
                                    ),
                                    cursorColor: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    print("presed");
                                    if (_formKey.currentState!.validate()) {
                                      updateUser(
                                          widget.id,
                                          name,
                                          dob,
                                          Nation,
                                          F_name,
                                          M_name,
                                          R_address,
                                          Roll_no,
                                          Gender,
                                          Blood_Group,
                                          Occupation,
                                          M_no,
                                          e_mail,
                                          busstop,
                                          Community,
                                          Hosteller,
                                          Aadhar,
                                          HSC,
                                          HSC_MARK,
                                          HSC_BOARD,
                                          SSLC,
                                          SSLC_MARK,
                                          SSLC_BOARD,
                                          pic);
                                    }
                                  },
                                  child: const Text(
                                    'Update',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Generatepdf(
                                                  title = name,
                                                  dobp = Nation,
                                                  nation = dob,
                                                  m_name = M_name,
                                                  f_name = F_name,
                                                  r_address = R_address,
                                                  roll_no = Roll_no,
                                                  gender = Gender,
                                                  blood_Group = Blood_Group,
                                                  occupation = Occupation,
                                                  busstop,
                                                  m_number = M_no,
                                                  e_mail = e_mail,
                                                  community = Community,
                                                  hosteller = Hosteller,
                                                  aadhar = Aadhar,
                                                  hSC = HSC,
                                                  hSC_MARK = HSC_MARK,
                                                  hSC_BOARD = HSC_BOARD,
                                                  sSLC = SSLC,
                                                  sSLC_MARK = SSLC_MARK,
                                                  sSLC_BOARD = SSLC_BOARD,
                                                  sem1 = sem1,
                                                  s1_ex1_m2 = s1_ex1_m2,
                                                  s1_ex1_m3 = s1_ex1_m3,
                                                  s1_ex1_m4 = s1_ex1_m4,
                                                  s1_ex1_m5 = s1_ex1_m5,
                                                  s1_ex1_m6 = s1_ex1_m6,
                                                  s1_ex1_m7 = s1_ex1_m7,
                                                  // 22
                                                  s1_ex2_m1 = s1_ex2_m1,
                                                  s1_ex2_m2 = s1_ex2_m2,
                                                  s1_ex2_m3 = s1_ex2_m3,
                                                  s1_ex2_m4 = s1_ex2_m4,
                                                  s1_ex2_m5 = s1_ex2_m5,
                                                  s1_ex2_m6 = s1_ex2_m6,
                                                  s1_ex2_m7 = s1_ex2_m7,
// 3333
                                                  s1_ex3_m1 = s1_ex3_m1,
                                                  s1_ex3_m2 = s1_ex3_m2,
                                                  s1_ex3_m3 = s1_ex3_m3,
                                                  s1_ex3_m4 = s1_ex3_m4,
                                                  s1_ex3_m5 = s1_ex3_m5,
                                                  s1_ex3_m6 = s1_ex3_m6,
                                                  s1_ex3_m7 = s1_ex3_m7,
// 44444
                                                  s1_ex4_m1 = s1_ex4_m1,
                                                  s1_ex4_m2 = s1_ex4_m2,
                                                  s1_ex4_m3 = s1_ex4_m3,
                                                  s1_ex4_m4 = s1_ex4_m4,
                                                  s1_ex4_m5 = s1_ex4_m5,
                                                  s1_ex4_m6 = s1_ex4_m6,
                                                  s1_ex4_m7 = s1_ex4_m7,
// 55555
                                                  s1_ex5_m1 = s1_ex5_m1,
                                                  s1_ex5_m2 = s1_ex5_m2,
                                                  s1_ex5_m3 = s1_ex5_m3,
                                                  s1_ex5_m4 = s1_ex5_m4,
                                                  s1_ex5_m5 = s1_ex5_m5,
                                                  s1_ex5_m6 = s1_ex5_m6,
                                                  s1_ex5_m7 = s1_ex5_m7,
                                                  // sem2 full
                                                  s2_ex1_m1 = s2_ex1_m1,
                                                  s2_ex1_m2 = s2_ex1_m2,
                                                  s2_ex1_m3 = s2_ex1_m3,
                                                  s2_ex1_m4 = s2_ex1_m4,
                                                  s2_ex1_m5 = s2_ex1_m5,
                                                  s2_ex1_m6 = s2_ex1_m6,
                                                  s2_ex1_m7 = s2_ex1_m7,
                                                  // 22
                                                  s2_ex2_m1 = s2_ex2_m1,
                                                  s2_ex2_m2 = s2_ex2_m2,
                                                  s2_ex2_m3 = s2_ex2_m3,
                                                  s2_ex2_m4 = s2_ex2_m4,
                                                  s2_ex2_m5 = s2_ex2_m5,
                                                  s2_ex2_m6 = s2_ex2_m6,
                                                  s2_ex2_m7 = s2_ex2_m7,
// 3333
                                                  s2_ex3_m1 = s2_ex3_m1,
                                                  s2_ex3_m2 = s2_ex3_m2,
                                                  s2_ex3_m3 = s2_ex3_m3,
                                                  s2_ex3_m4 = s2_ex3_m4,
                                                  s2_ex3_m5 = s2_ex3_m5,
                                                  s2_ex3_m6 = s2_ex3_m6,
                                                  s2_ex3_m7 = s2_ex3_m7,
// 44444
                                                  s2_ex4_m1 = s2_ex4_m1,
                                                  s2_ex4_m2 = s2_ex4_m2,
                                                  s2_ex4_m3 = s2_ex4_m3,
                                                  s2_ex4_m4 = s2_ex4_m4,
                                                  s2_ex4_m5 = s2_ex4_m5,
                                                  s2_ex4_m6 = s2_ex4_m6,
                                                  s2_ex4_m7 = s2_ex4_m7,
// 55555
                                                  s2_ex5_m1 = s2_ex5_m1,
                                                  s2_ex5_m2 = s2_ex5_m2,
                                                  s2_ex5_m3 = s2_ex5_m3,
                                                  s2_ex5_m4 = s2_ex5_m4,
                                                  s2_ex5_m5 = s2_ex5_m5,
                                                  s2_ex5_m6 = s2_ex5_m6,
                                                  s2_ex5_m7 = s2_ex5_m7,
                                                  // sem3 full
                                                  s3_ex1_m1 = s3_ex1_m1,
                                                  s3_ex1_m2 = s3_ex1_m2,
                                                  s3_ex1_m3 = s3_ex1_m3,
                                                  s3_ex1_m4 = s3_ex1_m4,
                                                  s3_ex1_m5 = s3_ex1_m5,
                                                  s3_ex1_m6 = s3_ex1_m6,
                                                  s3_ex1_m7 = s3_ex1_m7,
                                                  // 22
                                                  s3_ex2_m1 = s3_ex2_m1,
                                                  s3_ex2_m2 = s3_ex2_m2,
                                                  s3_ex2_m3 = s3_ex2_m3,
                                                  s3_ex2_m4 = s3_ex2_m4,
                                                  s3_ex2_m5 = s3_ex2_m5,
                                                  s3_ex2_m6 = s3_ex2_m6,
                                                  s3_ex2_m7 = s3_ex2_m7,
// 3333
                                                  s3_ex3_m1 = s3_ex3_m1,
                                                  s3_ex3_m2 = s3_ex3_m2,
                                                  s3_ex3_m3 = s3_ex3_m3,
                                                  s3_ex3_m4 = s3_ex3_m4,
                                                  s3_ex3_m5 = s3_ex3_m5,
                                                  s3_ex3_m6 = s3_ex3_m6,
                                                  s3_ex3_m7 = s3_ex3_m7,
// 44444
                                                  s3_ex4_m1 = s3_ex4_m1,
                                                  s3_ex4_m2 = s3_ex4_m2,
                                                  s3_ex4_m3 = s3_ex4_m3,
                                                  s3_ex4_m4 = s3_ex4_m4,
                                                  s3_ex4_m5 = s3_ex4_m5,
                                                  s3_ex4_m6 = s3_ex4_m6,
                                                  s3_ex4_m7 = s3_ex4_m7,
// 55555
                                                  s3_ex5_m1 = s3_ex5_m1,
                                                  s3_ex5_m2 = s3_ex5_m2,
                                                  s3_ex5_m3 = s3_ex5_m3,
                                                  s3_ex5_m4 = s3_ex5_m4,
                                                  s3_ex5_m5 = s3_ex5_m5,
                                                  s3_ex5_m6 = s3_ex5_m6,
                                                  s3_ex5_m7 = s3_ex5_m7,

                                                  // sem3 full
                                                  s4_ex1_m1 = s4_ex1_m1,
                                                  s4_ex1_m2 = s4_ex1_m2,
                                                  s4_ex1_m3 = s4_ex1_m3,
                                                  s4_ex1_m4 = s4_ex1_m4,
                                                  s4_ex1_m5 = s4_ex1_m5,
                                                  s4_ex1_m6 = s4_ex1_m6,
                                                  s4_ex1_m7 = s4_ex1_m7,
                                                  // 22
                                                  s4_ex2_m1 = s4_ex2_m1,
                                                  s4_ex2_m2 = s4_ex2_m2,
                                                  s4_ex2_m3 = s4_ex2_m3,
                                                  s4_ex2_m4 = s4_ex2_m4,
                                                  s4_ex2_m5 = s4_ex2_m5,
                                                  s4_ex2_m6 = s4_ex2_m6,
                                                  s4_ex2_m7 = s4_ex2_m7,
// 3333
                                                  s4_ex3_m1 = s4_ex3_m1,
                                                  s4_ex3_m2 = s4_ex3_m2,
                                                  s4_ex3_m3 = s4_ex3_m3,
                                                  s4_ex3_m4 = s4_ex3_m4,
                                                  s4_ex3_m5 = s4_ex3_m5,
                                                  s4_ex3_m6 = s4_ex3_m6,
                                                  s4_ex3_m7 = s4_ex3_m7,
// 44444
                                                  s4_ex4_m1 = s4_ex4_m1,
                                                  s4_ex4_m2 = s4_ex4_m2,
                                                  s4_ex4_m3 = s4_ex4_m3,
                                                  s4_ex4_m4 = s4_ex4_m4,
                                                  s4_ex4_m5 = s4_ex4_m5,
                                                  s4_ex4_m6 = s4_ex4_m6,
                                                  s4_ex4_m7 = s4_ex4_m7,
// 55555
                                                  s4_ex5_m1 = s4_ex5_m1,
                                                  s4_ex5_m2 = s4_ex5_m2,
                                                  s4_ex5_m3 = s4_ex5_m3,
                                                  s4_ex5_m4 = s4_ex5_m4,
                                                  s4_ex5_m5 = s4_ex5_m5,
                                                  s4_ex5_m6 = s4_ex5_m6,
                                                  s4_ex5_m7 = s4_ex5_m7,

                                                  // sem3 full
                                                  s5_ex1_m1 = s5_ex1_m1,
                                                  s5_ex1_m2 = s5_ex1_m2,
                                                  s5_ex1_m3 = s5_ex1_m3,
                                                  s5_ex1_m4 = s5_ex1_m4,
                                                  s5_ex1_m5 = s5_ex1_m5,
                                                  s5_ex1_m6 = s5_ex1_m6,
                                                  s5_ex1_m7 = s5_ex1_m7,
                                                  // 22
                                                  s5_ex2_m1 = s5_ex2_m1,
                                                  s5_ex2_m2 = s5_ex2_m2,
                                                  s5_ex2_m3 = s5_ex2_m3,
                                                  s5_ex2_m4 = s5_ex2_m4,
                                                  s5_ex2_m5 = s5_ex2_m5,
                                                  s5_ex2_m6 = s5_ex2_m6,
                                                  s5_ex2_m7 = s5_ex2_m7,
// 3333
                                                  s5_ex3_m1 = s5_ex3_m1,
                                                  s5_ex3_m2 = s5_ex3_m2,
                                                  s5_ex3_m3 = s5_ex3_m3,
                                                  s5_ex3_m4 = s5_ex3_m4,
                                                  s5_ex3_m5 = s5_ex3_m5,
                                                  s5_ex3_m6 = s5_ex3_m6,
                                                  s5_ex3_m7 = s5_ex3_m7,
// 44444
                                                  s5_ex4_m1 = s5_ex4_m1,
                                                  s5_ex4_m2 = s5_ex4_m2,
                                                  s5_ex4_m3 = s5_ex4_m3,
                                                  s5_ex4_m4 = s5_ex4_m4,
                                                  s5_ex4_m5 = s5_ex4_m5,
                                                  s5_ex4_m6 = s5_ex4_m6,
                                                  s5_ex4_m7 = s5_ex4_m7,
// 55555
                                                  s5_ex5_m1 = s5_ex5_m1,
                                                  s5_ex5_m2 = s5_ex5_m2,
                                                  s5_ex5_m3 = s5_ex5_m3,
                                                  s5_ex5_m4 = s5_ex5_m4,
                                                  s5_ex5_m5 = s5_ex5_m5,
                                                  s5_ex5_m6 = s5_ex5_m6,
                                                  s5_ex5_m7 = s5_ex5_m7,

                                                  // sem3 full
                                                  s6_ex1_m1 = s6_ex1_m1,
                                                  s6_ex1_m2 = s6_ex1_m2,
                                                  s6_ex1_m3 = s6_ex1_m3,
                                                  s6_ex1_m4 = s6_ex1_m4,
                                                  s6_ex1_m5 = s6_ex1_m5,
                                                  s6_ex1_m6 = s6_ex1_m6,
                                                  s6_ex1_m7 = s6_ex1_m7,
                                                  // 22
                                                  s6_ex2_m1 = s6_ex2_m1,
                                                  s6_ex2_m2 = s6_ex2_m2,
                                                  s6_ex2_m3 = s6_ex2_m3,
                                                  s6_ex2_m4 = s6_ex2_m4,
                                                  s6_ex2_m5 = s6_ex2_m5,
                                                  s6_ex2_m6 = s6_ex2_m6,
                                                  s6_ex2_m7 = s6_ex2_m7,
// 3333
                                                  s6_ex3_m1 = s6_ex3_m1,
                                                  s6_ex3_m2 = s6_ex3_m2,
                                                  s6_ex3_m3 = s6_ex3_m3,
                                                  s6_ex3_m4 = s6_ex3_m4,
                                                  s6_ex3_m5 = s6_ex3_m5,
                                                  s6_ex3_m6 = s6_ex3_m6,
                                                  s6_ex3_m7 = s6_ex3_m7,
// 44444
                                                  s6_ex4_m1 = s6_ex4_m1,
                                                  s6_ex4_m2 = s6_ex4_m2,
                                                  s6_ex4_m3 = s6_ex4_m3,
                                                  s6_ex4_m4 = s6_ex4_m4,
                                                  s6_ex4_m5 = s6_ex4_m5,
                                                  s6_ex4_m6 = s6_ex4_m6,
                                                  s6_ex4_m7 = s6_ex4_m7,
// 55555
                                                  s6_ex5_m1 = s6_ex5_m1,
                                                  s6_ex5_m2 = s6_ex5_m2,
                                                  s6_ex5_m3 = s6_ex5_m3,
                                                  s6_ex5_m4 = s6_ex5_m4,
                                                  s6_ex5_m5 = s6_ex5_m5,
                                                  s6_ex5_m6 = s6_ex5_m6,
                                                  s6_ex5_m7 = s6_ex5_m7,
                                                  imagepdf = image)));
                                    },
                                    icon: Icon(Icons.print,
                                        color: Colors.blueGrey)),
                                ElevatedButton(
                                  onPressed: () => {alert()},
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromARGB(255, 255, 0, 0)),
                                ),
                              ],
                            ),
                          )
                        ])),
                  ));
                })));
  }

///////////////////mobile////////////////////////////////////
  Scaffold mobile(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Update Student"),
          actions: [
            InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "Update Semester Details",
                    style: TextStyle(fontSize: 15),
                  )),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => update_table(
                              context,
                              id: widget.id,
                            )));
              },
            )
          ],
        ),
        body: Form(
            key: _formKey,
            child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                future: FirebaseFirestore.instance
                    .collection('user')
                    .doc(widget.id)
                    .get()
                    .catchError((onError) {
                  return const Scaffold();
                }),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.hasError) {
                    return const Scaffold();
                  } else if (snapshot.data == null) {
                    return const Scaffold(
                        body: Center(
                            child: CircularProgressIndicator(
                      color: Colors.red,
                    )));
                  } else if (snapshot.requireData.exists == false) {
                    return Scaffold(
                        body: Center(
                            child: Text("No Data Found",
                                style: GoogleFonts.adamina(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            30))));
                  }

                  var data = snapshot.data!.data();

                  if (!changed) {
                    dob = data!['Date Of Birth'];
                    dateob = dob;
                    // ignore: non_constant_identifier_names
                    Nation = data['nationality'];
                    F_name = data["Father's Name"];
                    M_name = data["Mother's Name"];
                    R_address = data['Residential Address'];
                    Roll_no = data['Roll No'];
                    Gender = data['Gender'];
                    Gende = Gender;
                    name = data['Name'];
                    Hosteller = data['Hosteller'];
                    Hostel = Hosteller;
                    Blood_Group = data['Blood Group'];
                    Occupation = data['occupation'];
                    busstop = data['Bus Stop'];
                    e_mail = data['email'];
                    M_no = data['Mobile Number'];

                    Community = data['Community'];
                    Aadhar = data['aadhar Number'];
                    HSC = data['HSCSchool'];
                    HSC_MARK = data['HSCMark'];
                    HSC_BOARD = data['HSC'];
                    SSLC = data['SSLCSchool'];
                    SSLC_MARK = data['SSLCMark'];
                    SSLC_BOARD = data['SSLC'];
                    image = data['Url'];
                    sem1 = data['SEMESTER 1 EXAM 1 Mark1'];
                    s1_ex1_m2 = data['SEMESTER 1 EXAM 1 Mark2'];
                    s1_ex1_m3 = data['SEMESTER 1 EXAM 1 Mark3'];
                    s1_ex1_m4 = data['SEMESTER 1 EXAM 1 Mark4'];
                    s1_ex1_m5 = data['SEMESTER 1 EXAM 1 Mark5'];
                    s1_ex1_m6 = data['SEMESTER 1 EXAM 1 Mark6'];
                    s1_ex1_m7 = data['SEMESTER 1 EXAM 1 Mark7'];

                    s1_ex2_m1 = data['SEMESTER 1 EXAM 2 Mark1'];
                    s1_ex2_m2 = data['SEMESTER 1 EXAM 2 Mark2'];
                    s1_ex2_m3 = data['SEMESTER 1 EXAM 2 Mark3'];
                    s1_ex2_m4 = data['SEMESTER 1 EXAM 2 Mark4'];
                    s1_ex2_m5 = data['SEMESTER 1 EXAM 2 Mark5'];
                    s1_ex2_m6 = data['SEMESTER 1 EXAM 2 Mark6'];
                    s1_ex2_m7 = data['SEMESTER 1 EXAM 2 Mark7'];

                    s1_ex3_m1 = data['SEMESTER 1 EXAM 3 Mark1'];
                    s1_ex3_m2 = data['SEMESTER 1 EXAM 3 Mark2'];
                    s1_ex3_m3 = data['SEMESTER 1 EXAM 3 Mark3'];
                    s1_ex3_m4 = data['SEMESTER 1 EXAM 3 Mark4'];
                    s1_ex3_m5 = data['SEMESTER 1 EXAM 3 Mark5'];
                    s1_ex3_m6 = data['SEMESTER 1 EXAM 3 Mark6'];
                    s1_ex3_m7 = data['SEMESTER 1 EXAM 3 Mark7'];
                    //sem1_exam4
                    s1_ex4_m1 = data['SEMESTER 1 EXAM 4 Mark1'];
                    s1_ex4_m2 = data['SEMESTER 1 EXAM 4 Mark2'];
                    s1_ex4_m3 = data['SEMESTER 1 EXAM 4 Mark3'];
                    s1_ex4_m4 = data['SEMESTER 1 EXAM 4 Mark4'];
                    s1_ex4_m5 = data['SEMESTER 1 EXAM 4 Mark5'];
                    s1_ex4_m6 = data['SEMESTER 1 EXAM 4 Mark6'];
                    s1_ex4_m7 = data['SEMESTER 1 EXAM 4 Mark7'];

                    //sem1_exam5
                    s1_ex5_m1 = data['SEMESTER 1 EXAM 5 Mark1'];
                    s1_ex5_m2 = data['SEMESTER 1 EXAM 5 Mark2'];
                    s1_ex5_m3 = data['SEMESTER 1 EXAM 5 Mark3'];
                    s1_ex5_m4 = data['SEMESTER 1 EXAM 5 Mark4'];
                    s1_ex5_m5 = data['SEMESTER 1 EXAM 5 Mark5'];
                    s1_ex5_m6 = data['SEMESTER 1 EXAM 5 Mark6'];
                    s1_ex5_m7 = data['SEMESTER 1 EXAM 5 Mark7'];

                    s2_ex1_m1 = data['SEMESTER 2 EXAM 1 Mark1'];
                    s2_ex1_m2 = data['SEMESTER 2 EXAM 1 Mark2'];
                    s2_ex1_m3 = data['SEMESTER 2 EXAM 1 Mark3'];
                    s2_ex1_m4 = data['SEMESTER 2 EXAM 1 Mark4'];
                    s2_ex1_m5 = data['SEMESTER 2 EXAM 1 Mark5'];
                    s2_ex1_m6 = data['SEMESTER 2 EXAM 1 Mark6'];
                    s2_ex1_m7 = data['SEMESTER 2 EXAM 1 Mark7'];
                    //sem2_exam2
                    s2_ex2_m1 = data['SEMESTER 2 EXAM 2 Mark1'];
                    s2_ex2_m2 = data['SEMESTER 2 EXAM 2 Mark2'];
                    s2_ex2_m3 = data['SEMESTER 2 EXAM 2 Mark3'];
                    s2_ex2_m4 = data['SEMESTER 2 EXAM 2 Mark4'];
                    s2_ex2_m5 = data['SEMESTER 2 EXAM 2 Mark5'];
                    s2_ex2_m6 = data['SEMESTER 2 EXAM 2 Mark6'];
                    s2_ex2_m7 = data['SEMESTER 2 EXAM 2 Mark7'];
                    //sem2_exam3
                    s2_ex3_m1 = data['SEMESTER 2 EXAM 3 Mark1'];
                    s2_ex3_m2 = data['SEMESTER 2 EXAM 3 Mark2'];
                    s2_ex3_m3 = data['SEMESTER 2 EXAM 3 Mark3'];
                    s2_ex3_m4 = data['SEMESTER 2 EXAM 3 Mark4'];
                    s2_ex3_m5 = data['SEMESTER 2 EXAM 3 Mark5'];
                    s2_ex3_m6 = data['SEMESTER 2 EXAM 3 Mark6'];
                    s2_ex3_m7 = data['SEMESTER 2 EXAM 3 Mark7'];
                    //sem2_exam4
                    s2_ex4_m1 = data['SEMESTER 2 EXAM 4 Mark1'];
                    s2_ex4_m2 = data['SEMESTER 2 EXAM 4 Mark2'];
                    s2_ex4_m3 = data['SEMESTER 2 EXAM 4 Mark3'];
                    s2_ex4_m4 = data['SEMESTER 2 EXAM 4 Mark4'];
                    s2_ex4_m5 = data['SEMESTER 2 EXAM 4 Mark5'];
                    s2_ex4_m6 = data['SEMESTER 2 EXAM 4 Mark6'];
                    s2_ex4_m7 = data['SEMESTER 2 EXAM 4 Mark7'];

                    //sem2_exam5
                    s2_ex5_m1 = data['SEMESTER 2 EXAM 5 Mark1'];
                    s2_ex5_m2 = data['SEMESTER 2 EXAM 5 Mark2'];
                    s2_ex5_m3 = data['SEMESTER 2 EXAM 5 Mark3'];
                    s2_ex5_m4 = data['SEMESTER 2 EXAM 5 Mark4'];
                    s2_ex5_m5 = data['SEMESTER 2 EXAM 5 Mark5'];
                    s2_ex5_m6 = data['SEMESTER 2 EXAM 5 Mark6'];
                    s2_ex5_m7 = data['SEMESTER 2 EXAM 5 Mark7'];

                    //sem3_exam1
                    s3_ex1_m1 = data['SEMESTER 3 EXAM 1 Mark1'];
                    s3_ex1_m2 = data['SEMESTER 3 EXAM 1 Mark2'];
                    s3_ex1_m3 = data['SEMESTER 3 EXAM 1 Mark3'];
                    s3_ex1_m4 = data['SEMESTER 3 EXAM 1 Mark4'];
                    s3_ex1_m5 = data['SEMESTER 3 EXAM 1 Mark5'];
                    s3_ex1_m6 = data['SEMESTER 3 EXAM 1 Mark6'];
                    s3_ex1_m7 = data['SEMESTER 3 EXAM 1 Mark7'];
                    //sem3_exam2
                    s3_ex2_m1 = data['SEMESTER 3 EXAM 2 Mark1'];
                    s3_ex2_m2 = data['SEMESTER 3 EXAM 2 Mark2'];
                    s3_ex2_m3 = data['SEMESTER 3 EXAM 2 Mark3'];
                    s3_ex2_m4 = data['SEMESTER 3 EXAM 2 Mark4'];
                    s3_ex2_m5 = data['SEMESTER 3 EXAM 2 Mark5'];
                    s3_ex2_m6 = data['SEMESTER 3 EXAM 2 Mark6'];
                    s3_ex2_m7 = data['SEMESTER 3 EXAM 2 Mark7'];
                    //sem3_exam3
                    s3_ex3_m1 = data['SEMESTER 3 EXAM 3 Mark1'];
                    s3_ex3_m2 = data['SEMESTER 3 EXAM 3 Mark2'];
                    s3_ex3_m3 = data['SEMESTER 3 EXAM 3 Mark3'];
                    s3_ex3_m4 = data['SEMESTER 3 EXAM 3 Mark4'];
                    s3_ex3_m5 = data['SEMESTER 3 EXAM 3 Mark5'];
                    s3_ex3_m6 = data['SEMESTER 3 EXAM 3 Mark6'];
                    s3_ex3_m7 = data['SEMESTER 3 EXAM 3 Mark7'];
                    //sem3_exam4
                    s3_ex4_m1 = data['SEMESTER 3 EXAM 4 Mark1'];
                    s3_ex4_m2 = data['SEMESTER 3 EXAM 4 Mark2'];
                    s3_ex4_m3 = data['SEMESTER 3 EXAM 4 Mark3'];
                    s3_ex4_m4 = data['SEMESTER 3 EXAM 4 Mark4'];
                    s3_ex4_m5 = data['SEMESTER 3 EXAM 4 Mark5'];
                    s3_ex4_m6 = data['SEMESTER 3 EXAM 4 Mark6'];
                    s3_ex4_m7 = data['SEMESTER 3 EXAM 4 Mark7'];

                    //sem3_exam5
                    s3_ex5_m1 = data['SEMESTER 3 EXAM 5 Mark1'];
                    s3_ex5_m2 = data['SEMESTER 3 EXAM 5 Mark2'];
                    s3_ex5_m3 = data['SEMESTER 3 EXAM 5 Mark3'];
                    s3_ex5_m4 = data['SEMESTER 3 EXAM 5 Mark4'];
                    s3_ex5_m5 = data['SEMESTER 3 EXAM 5 Mark5'];
                    s3_ex5_m6 = data['SEMESTER 3 EXAM 5 Mark6'];
                    s3_ex5_m7 = data['SEMESTER 3 EXAM 5 Mark7'];

                    s4_ex1_m1 = data!['SEMESTER 4 EXAM 1 Mark1'];
                    s4_ex1_m2 = data['SEMESTER 4 EXAM 1 Mark2'];
                    s4_ex1_m3 = data['SEMESTER 4 EXAM 1 Mark3'];
                    s4_ex1_m4 = data['SEMESTER 4 EXAM 1 Mark4'];
                    s4_ex1_m5 = data['SEMESTER 4 EXAM 1 Mark5'];
                    s4_ex1_m6 = data['SEMESTER 4 EXAM 1 Mark6'];
                    s4_ex1_m7 = data['SEMESTER 4 EXAM 1 Mark7'];
                    //sem4_exam2
                    s4_ex2_m1 = data['SEMESTER 4 EXAM 2 Mark1'];
                    s4_ex2_m2 = data['SEMESTER 4 EXAM 2 Mark2'];
                    s4_ex2_m3 = data['SEMESTER 4 EXAM 2 Mark3'];
                    s4_ex2_m4 = data['SEMESTER 4 EXAM 2 Mark4'];
                    s4_ex2_m5 = data['SEMESTER 4 EXAM 2 Mark5'];
                    s4_ex2_m6 = data['SEMESTER 4 EXAM 2 Mark6'];
                    s4_ex2_m7 = data['SEMESTER 4 EXAM 2 Mark7'];
                    //sem4_exam3
                    s4_ex3_m1 = data['SEMESTER 4 EXAM 3 Mark1'];
                    s4_ex3_m2 = data['SEMESTER 4 EXAM 3 Mark2'];
                    s4_ex3_m3 = data['SEMESTER 4 EXAM 3 Mark3'];
                    s4_ex3_m4 = data['SEMESTER 4 EXAM 3 Mark4'];
                    s4_ex3_m5 = data['SEMESTER 4 EXAM 3 Mark5'];
                    s4_ex3_m6 = data['SEMESTER 4 EXAM 3 Mark6'];
                    s4_ex3_m7 = data['SEMESTER 4 EXAM 3 Mark7'];
                    //sem4_exam4
                    s4_ex4_m1 = data['SEMESTER 4 EXAM 4 Mark1'];
                    s4_ex4_m2 = data['SEMESTER 4 EXAM 4 Mark2'];
                    s4_ex4_m3 = data['SEMESTER 4 EXAM 4 Mark3'];
                    s4_ex4_m4 = data['SEMESTER 4 EXAM 4 Mark4'];
                    s4_ex4_m5 = data['SEMESTER 4 EXAM 4 Mark5'];
                    s4_ex4_m6 = data['SEMESTER 4 EXAM 4 Mark6'];
                    s4_ex4_m7 = data['SEMESTER 4 EXAM 4 Mark7'];

                    //sem4_exam5
                    s4_ex5_m1 = data['SEMESTER 4 EXAM 5 Mark1'];
                    s4_ex5_m2 = data['SEMESTER 4 EXAM 5 Mark2'];
                    s4_ex5_m3 = data['SEMESTER 4 EXAM 5 Mark3'];
                    s4_ex5_m4 = data['SEMESTER 4 EXAM 5 Mark4'];
                    s4_ex5_m5 = data['SEMESTER 4 EXAM 5 Mark5'];
                    s4_ex5_m6 = data['SEMESTER 4 EXAM 5 Mark6'];
                    s4_ex5_m7 = data['SEMESTER 4 EXAM 5 Mark7'];

                    s5_ex1_m1 = data!['SEMESTER 5 EXAM 1 Mark1'];
                    s5_ex1_m2 = data['SEMESTER 5 EXAM 1 Mark2'];
                    s5_ex1_m3 = data['SEMESTER 5 EXAM 1 Mark3'];
                    s5_ex1_m4 = data['SEMESTER 5 EXAM 1 Mark4'];
                    s5_ex1_m5 = data['SEMESTER 5 EXAM 1 Mark5'];
                    s5_ex1_m6 = data['SEMESTER 5 EXAM 1 Mark6'];
                    s5_ex1_m7 = data['SEMESTER 5 EXAM 1 Mark7'];
                    //sem5_exam2
                    s5_ex2_m1 = data['SEMESTER 5 EXAM 2 Mark1'];
                    s5_ex2_m2 = data['SEMESTER 5 EXAM 2 Mark2'];
                    s5_ex2_m3 = data['SEMESTER 5 EXAM 2 Mark3'];
                    s5_ex2_m4 = data['SEMESTER 5 EXAM 2 Mark4'];
                    s5_ex2_m5 = data['SEMESTER 5 EXAM 2 Mark5'];
                    s5_ex2_m6 = data['SEMESTER 5 EXAM 2 Mark6'];
                    s5_ex2_m7 = data['SEMESTER 5 EXAM 2 Mark7'];
                    //sem5_exam3
                    s5_ex3_m1 = data['SEMESTER 5 EXAM 3 Mark1'];
                    s5_ex3_m2 = data['SEMESTER 5 EXAM 3 Mark2'];
                    s5_ex3_m3 = data['SEMESTER 5 EXAM 3 Mark3'];
                    s5_ex3_m4 = data['SEMESTER 5 EXAM 3 Mark4'];
                    s5_ex3_m5 = data['SEMESTER 5 EXAM 3 Mark5'];
                    s5_ex3_m6 = data['SEMESTER 5 EXAM 3 Mark6'];
                    s5_ex3_m7 = data['SEMESTER 5 EXAM 3 Mark7'];
                    //sem5_exam4
                    s5_ex4_m1 = data['SEMESTER 5 EXAM 4 Mark1'];
                    s5_ex4_m2 = data['SEMESTER 5 EXAM 4 Mark2'];
                    s5_ex4_m3 = data['SEMESTER 5 EXAM 4 Mark3'];
                    s5_ex4_m4 = data['SEMESTER 5 EXAM 4 Mark4'];
                    s5_ex4_m5 = data['SEMESTER 5 EXAM 4 Mark5'];
                    s5_ex4_m6 = data['SEMESTER 5 EXAM 4 Mark6'];
                    s5_ex4_m7 = data['SEMESTER 5 EXAM 4 Mark7'];

                    //sem5_exam5
                    s5_ex5_m1 = data['SEMESTER 5 EXAM 5 Mark1'];
                    s5_ex5_m2 = data['SEMESTER 5 EXAM 5 Mark2'];
                    s5_ex5_m3 = data['SEMESTER 5 EXAM 5 Mark3'];
                    s5_ex5_m4 = data['SEMESTER 5 EXAM 5 Mark4'];
                    s5_ex5_m5 = data['SEMESTER 5 EXAM 5 Mark5'];
                    s5_ex5_m6 = data['SEMESTER 5 EXAM 5 Mark6'];
                    s5_ex5_m7 = data['SEMESTER 5 EXAM 5 Mark7'];

                    //sem6_exam1
                    s6_ex1_m1 = data!['SEMESTER 6 EXAM 1 Mark1'];
                    s6_ex1_m2 = data['SEMESTER 6 EXAM 1 Mark2'];
                    s6_ex1_m3 = data['SEMESTER 6 EXAM 1 Mark3'];
                    s6_ex1_m4 = data['SEMESTER 6 EXAM 1 Mark4'];
                    s6_ex1_m5 = data['SEMESTER 6 EXAM 1 Mark5'];
                    s6_ex1_m6 = data['SEMESTER 6 EXAM 1 Mark6'];
                    s6_ex1_m7 = data['SEMESTER 6 EXAM 1 Mark7'];
                    //sem6_exam2
                    s6_ex2_m1 = data['SEMESTER 6 EXAM 2 Mark1'];
                    s6_ex2_m2 = data['SEMESTER 6 EXAM 2 Mark2'];
                    s6_ex2_m3 = data['SEMESTER 6 EXAM 2 Mark3'];
                    s6_ex2_m4 = data['SEMESTER 6 EXAM 2 Mark4'];
                    s6_ex2_m5 = data['SEMESTER 6 EXAM 2 Mark5'];
                    s6_ex2_m6 = data['SEMESTER 6 EXAM 2 Mark6'];
                    s6_ex2_m7 = data['SEMESTER 6 EXAM 2 Mark7'];
                    //sem6_exam3
                    s6_ex3_m1 = data['SEMESTER 6 EXAM 3 Mark1'];
                    s6_ex3_m2 = data['SEMESTER 6 EXAM 3 Mark2'];
                    s6_ex3_m3 = data['SEMESTER 6 EXAM 3 Mark3'];
                    s6_ex3_m4 = data['SEMESTER 6 EXAM 3 Mark4'];
                    s6_ex3_m5 = data['SEMESTER 6 EXAM 3 Mark5'];
                    s6_ex3_m6 = data['SEMESTER 6 EXAM 3 Mark6'];
                    s6_ex3_m7 = data['SEMESTER 6 EXAM 3 Mark7'];
                    //sem6_exam4
                    s6_ex4_m1 = data['SEMESTER 6 EXAM 4 Mark1'];
                    s6_ex4_m2 = data['SEMESTER 6 EXAM 4 Mark2'];
                    s6_ex4_m3 = data['SEMESTER 6 EXAM 4 Mark3'];
                    s6_ex4_m4 = data['SEMESTER 6 EXAM 4 Mark4'];
                    s6_ex4_m5 = data['SEMESTER 6 EXAM 4 Mark5'];
                    s6_ex4_m6 = data['SEMESTER 6 EXAM 4 Mark6'];
                    s6_ex4_m7 = data['SEMESTER 6 EXAM 4 Mark7'];

                    //sem6_exam5
                    s6_ex5_m1 = data['SEMESTER 6 EXAM 5 Mark1'];
                    s6_ex5_m2 = data['SEMESTER 6 EXAM 5 Mark2'];
                    s6_ex5_m3 = data['SEMESTER 6 EXAM 5 Mark3'];
                    s6_ex5_m4 = data['SEMESTER 6 EXAM 5 Mark4'];
                    s6_ex5_m5 = data['SEMESTER 6 EXAM 5 Mark5'];
                    s6_ex5_m6 = data['SEMESTER 6 EXAM 5 Mark6'];
                    s6_ex5_m7 = data['SEMESTER 6 EXAM 5 Mark7'];

                    changed = true;
                  }

                  var ite = [
                    'Hosteller',
                    'Dayscholar',
                  ];

                  var itemsS = [
                    'Male',
                    'Female',
                    // 'Others',
                  ];

                  return SingleChildScrollView(
                      child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Color.fromARGB(255, 227, 227, 227))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.only(
                            top: 30, left: 20, right: 20, bottom: 30),
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: const Offset(0, 5),
                                      )
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(image),
                                    radius: MediaQuery.of(context).size.width *
                                        0.07,
                                    backgroundColor: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () async {
                                    pick();
                                  },
                                  icon: const Icon(Icons.edit))
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text("Personal Details",
                              style: GoogleFonts.robotoSlab(
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text("Name:"),
                              contentPadding: EdgeInsets.only(left: 5),
                              labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue),
                              suffixIcon: Icon(Icons.person,
                                  color: Color.fromARGB(255, 213, 0, 142)),
                            ),
                            initialValue: name,
                            onChanged: (value) => name = value,
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Name';
                              }
                              return null;
                            },
                          )),
                          const SizedBox(height: 10),
                          Container(
                              child: TextFormField(
                            initialValue: dob,
                            decoration: const InputDecoration(
                              label: Text("Date of Birth"),
                              contentPadding: EdgeInsets.only(left: 5),
                              labelStyle: TextStyle(
                                height: 0.99,
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                              suffixIcon: Icon(Icons.date_range_sharp,
                                  color: Color.fromARGB(255, 148, 50, 8)),
                            ),
                            onFieldSubmitted: (value) => dob = value,
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter D.O.B';
                              }
                              return null;
                            },
                          )),
                          const SizedBox(height: 10),
                          Container(
                              child: TextFormField(
                            decoration: const InputDecoration(
                              label: Text("Nationality"),
                              contentPadding: EdgeInsets.only(left: 5),
                              labelStyle: TextStyle(
                                height: 0.99,
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                              suffixIcon: Icon(
                                Icons.flag_sharp,
                                color: Color.fromARGB(255, 36, 17, 144),
                              ),
                            ),
                            initialValue: Nation,
                            onChanged: (value) => Nation = value,
                            cursorColor: Colors.blue,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Nationality';
                              }
                              return null;
                            },
                          )),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Father's Name"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 119, 1, 254),
                                ),
                              ),
                              initialValue: F_name,
                              onChanged: (value) => F_name = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Father's Name";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Mother's Name"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 3, 216, 149),
                                ),
                              ),
                              initialValue: M_name,
                              onChanged: (value) => M_name = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Mother's Name";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Residential Address"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.location_on_sharp,
                                  color: Color.fromARGB(255, 240, 4, 153),
                                ),
                              ),
                              initialValue: R_address,
                              onChanged: (value) => R_address = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Residential Address';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              readOnly: true,
                              decoration: const InputDecoration(
                                label: Text("Register No."),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.album_sharp,
                                  color: Color.fromARGB(255, 4, 127, 193),
                                ),
                              ),
                              initialValue: Roll_no,
                              onChanged: (value) => Roll_no = value,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Register No.';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                child: Flexible(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: Gende,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: itemsS.map((String itemess) {
                                      return DropdownMenuItem(
                                        value: itemess,
                                        child: Text(itemess),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValuess) {
                                      setState(() {
                                        Gende = newValuess!;
                                        Gender = Gende;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Blood Group"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.bloodtype_sharp,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                ),
                              ),
                              initialValue: Blood_Group,
                              onChanged: (value) => Blood_Group = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Blood Group';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Father's / Mother's Occupation"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.work,
                                  color: Color.fromARGB(255, 255, 136, 33),
                                ),
                              ),
                              initialValue: Occupation,
                              onChanged: (value) => Occupation = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Father's Occupation";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Bus Stop"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.work,
                                  color: Color.fromARGB(255, 255, 136, 33),
                                ),
                              ),
                              initialValue: busstop,
                              onChanged: (value) => busstop = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Bus Stop";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Contact No."),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.call_outlined,
                                  color: Color.fromARGB(255, 0, 177, 252),
                                ),
                              ),
                              initialValue: M_no,
                              onChanged: (value) => M_no = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Contact No';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Email "),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 33, 131, 243),
                                ),
                                suffixIcon: Icon(
                                  Icons.home,
                                  color: Color.fromARGB(255, 255, 204, 2),
                                ),
                              ),
                              initialValue: e_mail,
                              onChanged: (value) => e_mail = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Email';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Community"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.date_range_sharp,
                                  color: Color.fromARGB(255, 33, 243, 194),
                                ),
                              ),
                              initialValue: Community,
                              onChanged: (value) => Community = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Community';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                child: Flexible(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    value: Hostel,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: ite.map((String it) {
                                      return DropdownMenuItem(
                                        value: it,
                                        child: Text(it),
                                      );
                                    }).toList(),
                                    onChanged: (String? val) {
                                      setState(() {
                                        Hostel = val!;
                                        Hosteller = Hostel;
                                        print(Hosteller);
                                        // students.doc(widget.id).update({
                                        //   "Name": name,
                                        //   "Gender": Gender
                                        // });
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Aadhar.No"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.document_scanner_outlined,
                                  color: Color.fromARGB(255, 159, 253, 7),
                                ),
                              ),
                              initialValue: Aadhar,
                              onChanged: (value) => Aadhar = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Aadhar Number';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text("Academic Details",
                              style: GoogleFonts.robotoSlab(
                                  color: const Color.fromARGB(255, 8, 0, 247),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("10th Mark"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.percent_sharp,
                                  color: Color.fromARGB(224, 13, 1, 6),
                                ),
                              ),
                              initialValue: SSLC_MARK,
                              onChanged: (value) => SSLC_MARK = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter 10th Mark';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("School"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.school,
                                  color: Color(0xffabcdef),
                                ),
                              ),
                              initialValue: SSLC,
                              onChanged: (value) => SSLC = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter School';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("10th Board"),
                                contentPadding: EdgeInsets.only(left: 5),
                                // ignore: unnecessary_const
                                labelStyle: const TextStyle(
                                  height: 0.99,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                                // ignore: unnecessary_const
                                suffixIcon: const Icon(
                                  Icons.school_outlined,
                                  color: Color.fromARGB(255, 38, 91, 56),
                                ),
                              ),
                              initialValue: SSLC_BOARD,
                              onChanged: (value) => SSLC_BOARD = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter 10th Board';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("12th Mark"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  height: 0.99,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.percent_outlined,
                                  color: Color.fromARGB(197, 243, 124, 33),
                                ),
                              ),
                              initialValue: HSC_MARK,
                              onChanged: (value) => HSC_MARK = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter 12th Mark';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("School"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  height: 0.99,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.school_sharp,
                                  color: Color.fromARGB(255, 127, 15, 197),
                                ),
                              ),
                              initialValue: HSC,
                              onChanged: (value) => HSC = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter School';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("12th Board"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  height: 0.99,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.school_outlined,
                                  color: Color.fromARGB(86, 173, 243, 33),
                                ),
                              ),
                              initialValue: HSC_BOARD,
                              onChanged: (value) => HSC_BOARD = value,
                              cursorColor: Colors.blue,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter 12th Board';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          sem_1_widget(context,
                              header: "Semester I", id: widget.id),
                          sem_2_widget(context,
                              header: "Semester II", id: widget.id),
                          sem_3_widget(context,
                              header: "Semester III", id: widget.id),
                          sem_4_widget(context,
                              header: "Semester IV", id: widget.id),
                          sem_5_widget(context,
                              header: "Semester V", id: widget.id),
                          sem_6_widget(context,
                              header: "Semester VI", id: widget.id),
                          const SizedBox(height: 20),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Total"),
                                contentPadding: EdgeInsets.only(left: 5),
                                // ignore: unnecessary_const
                                labelStyle: const TextStyle(
                                  fontSize: 15,
                                  height: 0.99,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.grading_outlined,
                                  color: Color.fromARGB(197, 243, 124, 33),
                                ),
                              ),
                              cursorColor: Colors.blue,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Mark"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  height: 0.99,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.leaderboard,
                                  color: Color.fromARGB(255, 127, 15, 197),
                                ),
                              ),
                              cursorColor: Colors.blue,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Class"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  height: 0.99,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.star_outline_sharp,
                                  color: Color.fromARGB(248, 249, 27, 27),
                                ),
                              ),
                              cursorColor: Colors.blue,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Year of Passing"),
                                contentPadding: EdgeInsets.only(left: 5),
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  height: 0.99,
                                  color: Colors.blue,
                                ),
                                suffixIcon: Icon(
                                  Icons.date_range_sharp,
                                  color: Color.fromARGB(234, 3, 90, 183),
                                ),
                              ),
                              cursorColor: Colors.blue,
                            ),
                          ),
                          const SizedBox(height: 40),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      updateUser(
                                          widget.id,
                                          name,
                                          dob,
                                          Nation,
                                          F_name,
                                          M_name,
                                          R_address,
                                          Roll_no,
                                          Gender,
                                          Blood_Group,
                                          Occupation,
                                          M_no,
                                          e_mail,
                                          busstop,
                                          Community,
                                          Hosteller,
                                          Aadhar,
                                          HSC,
                                          HSC_MARK,
                                          HSC_BOARD,
                                          SSLC,
                                          SSLC_MARK,
                                          SSLC_BOARD,
                                          pic);
                                    }
                                  },
                                  child: const Text(
                                    'Update',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Generatepdf(
                                                  title = name,
                                                  dobp = Nation,
                                                  nation = dob,
                                                  m_name = M_name,
                                                  f_name = F_name,
                                                  r_address = R_address,
                                                  roll_no = Roll_no,
                                                  gender = Gender,
                                                  blood_Group = Blood_Group,
                                                  occupation = Occupation,
                                                  busstop,
                                                  m_number = M_no,
                                                  e_mail = e_mail,
                                                  community = Community,
                                                  hosteller = Hosteller,
                                                  aadhar = Aadhar,
                                                  hSC = HSC,
                                                  hSC_MARK = HSC_MARK,
                                                  hSC_BOARD = HSC_BOARD,
                                                  sSLC = SSLC,
                                                  sSLC_MARK = SSLC_MARK,
                                                  sSLC_BOARD = SSLC_BOARD,
                                                  sem1 = sem1,
                                                  s1_ex1_m2 = s1_ex1_m2,
                                                  s1_ex1_m3 = s1_ex1_m3,
                                                  s1_ex1_m4 = s1_ex1_m4,
                                                  s1_ex1_m5 = s1_ex1_m5,
                                                  s1_ex1_m6 = s1_ex1_m6,
                                                  s1_ex1_m7 = s1_ex1_m7,
                                                  // 22
                                                  s1_ex2_m1 = s1_ex2_m1,
                                                  s1_ex2_m2 = s1_ex2_m2,
                                                  s1_ex2_m3 = s1_ex2_m3,
                                                  s1_ex2_m4 = s1_ex2_m4,
                                                  s1_ex2_m5 = s1_ex2_m5,
                                                  s1_ex2_m6 = s1_ex2_m6,
                                                  s1_ex2_m7 = s1_ex2_m7,
// 3333
                                                  s1_ex3_m1 = s1_ex3_m1,
                                                  s1_ex3_m2 = s1_ex3_m2,
                                                  s1_ex3_m3 = s1_ex3_m3,
                                                  s1_ex3_m4 = s1_ex3_m4,
                                                  s1_ex3_m5 = s1_ex3_m5,
                                                  s1_ex3_m6 = s1_ex3_m6,
                                                  s1_ex3_m7 = s1_ex3_m7,
// 44444
                                                  s1_ex4_m1 = s1_ex4_m1,
                                                  s1_ex4_m2 = s1_ex4_m2,
                                                  s1_ex4_m3 = s1_ex4_m3,
                                                  s1_ex4_m4 = s1_ex4_m4,
                                                  s1_ex4_m5 = s1_ex4_m5,
                                                  s1_ex4_m6 = s1_ex4_m6,
                                                  s1_ex4_m7 = s1_ex4_m7,
// 55555
                                                  s1_ex5_m1 = s1_ex5_m1,
                                                  s1_ex5_m2 = s1_ex5_m2,
                                                  s1_ex5_m3 = s1_ex5_m3,
                                                  s1_ex5_m4 = s1_ex5_m4,
                                                  s1_ex5_m5 = s1_ex5_m5,
                                                  s1_ex5_m6 = s1_ex5_m6,
                                                  s1_ex5_m7 = s1_ex5_m7,
                                                  // sem2 full
                                                  s2_ex1_m1 = s2_ex1_m1,
                                                  s2_ex1_m2 = s2_ex1_m2,
                                                  s2_ex1_m3 = s2_ex1_m3,
                                                  s2_ex1_m4 = s2_ex1_m4,
                                                  s2_ex1_m5 = s2_ex1_m5,
                                                  s2_ex1_m6 = s2_ex1_m6,
                                                  s2_ex1_m7 = s2_ex1_m7,
                                                  // 22
                                                  s2_ex2_m1 = s2_ex2_m1,
                                                  s2_ex2_m2 = s2_ex2_m2,
                                                  s2_ex2_m3 = s2_ex2_m3,
                                                  s2_ex2_m4 = s2_ex2_m4,
                                                  s2_ex2_m5 = s2_ex2_m5,
                                                  s2_ex2_m6 = s2_ex2_m6,
                                                  s2_ex2_m7 = s2_ex2_m7,
// 3333
                                                  s2_ex3_m1 = s2_ex3_m1,
                                                  s2_ex3_m2 = s2_ex3_m2,
                                                  s2_ex3_m3 = s2_ex3_m3,
                                                  s2_ex3_m4 = s2_ex3_m4,
                                                  s2_ex3_m5 = s2_ex3_m5,
                                                  s2_ex3_m6 = s2_ex3_m6,
                                                  s2_ex3_m7 = s2_ex3_m7,
// 44444
                                                  s2_ex4_m1 = s2_ex4_m1,
                                                  s2_ex4_m2 = s2_ex4_m2,
                                                  s2_ex4_m3 = s2_ex4_m3,
                                                  s2_ex4_m4 = s2_ex4_m4,
                                                  s2_ex4_m5 = s2_ex4_m5,
                                                  s2_ex4_m6 = s2_ex4_m6,
                                                  s2_ex4_m7 = s2_ex4_m7,
// 55555
                                                  s2_ex5_m1 = s2_ex5_m1,
                                                  s2_ex5_m2 = s2_ex5_m2,
                                                  s2_ex5_m3 = s2_ex5_m3,
                                                  s2_ex5_m4 = s2_ex5_m4,
                                                  s2_ex5_m5 = s2_ex5_m5,
                                                  s2_ex5_m6 = s2_ex5_m6,
                                                  s2_ex5_m7 = s2_ex5_m7,
                                                  // sem3 full
                                                  s3_ex1_m1 = s3_ex1_m1,
                                                  s3_ex1_m2 = s3_ex1_m2,
                                                  s3_ex1_m3 = s3_ex1_m3,
                                                  s3_ex1_m4 = s3_ex1_m4,
                                                  s3_ex1_m5 = s3_ex1_m5,
                                                  s3_ex1_m6 = s3_ex1_m6,
                                                  s3_ex1_m7 = s3_ex1_m7,
                                                  // 22
                                                  s3_ex2_m1 = s3_ex2_m1,
                                                  s3_ex2_m2 = s3_ex2_m2,
                                                  s3_ex2_m3 = s3_ex2_m3,
                                                  s3_ex2_m4 = s3_ex2_m4,
                                                  s3_ex2_m5 = s3_ex2_m5,
                                                  s3_ex2_m6 = s3_ex2_m6,
                                                  s3_ex2_m7 = s3_ex2_m7,
// 3333
                                                  s3_ex3_m1 = s3_ex3_m1,
                                                  s3_ex3_m2 = s3_ex3_m2,
                                                  s3_ex3_m3 = s3_ex3_m3,
                                                  s3_ex3_m4 = s3_ex3_m4,
                                                  s3_ex3_m5 = s3_ex3_m5,
                                                  s3_ex3_m6 = s3_ex3_m6,
                                                  s3_ex3_m7 = s3_ex3_m7,
// 44444
                                                  s3_ex4_m1 = s3_ex4_m1,
                                                  s3_ex4_m2 = s3_ex4_m2,
                                                  s3_ex4_m3 = s3_ex4_m3,
                                                  s3_ex4_m4 = s3_ex4_m4,
                                                  s3_ex4_m5 = s3_ex4_m5,
                                                  s3_ex4_m6 = s3_ex4_m6,
                                                  s3_ex4_m7 = s3_ex4_m7,
// 55555
                                                  s3_ex5_m1 = s3_ex5_m1,
                                                  s3_ex5_m2 = s3_ex5_m2,
                                                  s3_ex5_m3 = s3_ex5_m3,
                                                  s3_ex5_m4 = s3_ex5_m4,
                                                  s3_ex5_m5 = s3_ex5_m5,
                                                  s3_ex5_m6 = s3_ex5_m6,
                                                  s3_ex5_m7 = s3_ex5_m7,

                                                  // sem3 full
                                                  s4_ex1_m1 = s4_ex1_m1,
                                                  s4_ex1_m2 = s4_ex1_m2,
                                                  s4_ex1_m3 = s4_ex1_m3,
                                                  s4_ex1_m4 = s4_ex1_m4,
                                                  s4_ex1_m5 = s4_ex1_m5,
                                                  s4_ex1_m6 = s4_ex1_m6,
                                                  s4_ex1_m7 = s4_ex1_m7,
                                                  // 22
                                                  s4_ex2_m1 = s4_ex2_m1,
                                                  s4_ex2_m2 = s4_ex2_m2,
                                                  s4_ex2_m3 = s4_ex2_m3,
                                                  s4_ex2_m4 = s4_ex2_m4,
                                                  s4_ex2_m5 = s4_ex2_m5,
                                                  s4_ex2_m6 = s4_ex2_m6,
                                                  s4_ex2_m7 = s4_ex2_m7,
// 3333
                                                  s4_ex3_m1 = s4_ex3_m1,
                                                  s4_ex3_m2 = s4_ex3_m2,
                                                  s4_ex3_m3 = s4_ex3_m3,
                                                  s4_ex3_m4 = s4_ex3_m4,
                                                  s4_ex3_m5 = s4_ex3_m5,
                                                  s4_ex3_m6 = s4_ex3_m6,
                                                  s4_ex3_m7 = s4_ex3_m7,
// 44444
                                                  s4_ex4_m1 = s4_ex4_m1,
                                                  s4_ex4_m2 = s4_ex4_m2,
                                                  s4_ex4_m3 = s4_ex4_m3,
                                                  s4_ex4_m4 = s4_ex4_m4,
                                                  s4_ex4_m5 = s4_ex4_m5,
                                                  s4_ex4_m6 = s4_ex4_m6,
                                                  s4_ex4_m7 = s4_ex4_m7,
// 55555
                                                  s4_ex5_m1 = s4_ex5_m1,
                                                  s4_ex5_m2 = s4_ex5_m2,
                                                  s4_ex5_m3 = s4_ex5_m3,
                                                  s4_ex5_m4 = s4_ex5_m4,
                                                  s4_ex5_m5 = s4_ex5_m5,
                                                  s4_ex5_m6 = s4_ex5_m6,
                                                  s4_ex5_m7 = s4_ex5_m7,

                                                  // sem3 full
                                                  s5_ex1_m1 = s5_ex1_m1,
                                                  s5_ex1_m2 = s5_ex1_m2,
                                                  s5_ex1_m3 = s5_ex1_m3,
                                                  s5_ex1_m4 = s5_ex1_m4,
                                                  s5_ex1_m5 = s5_ex1_m5,
                                                  s5_ex1_m6 = s5_ex1_m6,
                                                  s5_ex1_m7 = s5_ex1_m7,
                                                  // 22
                                                  s5_ex2_m1 = s5_ex2_m1,
                                                  s5_ex2_m2 = s5_ex2_m2,
                                                  s5_ex2_m3 = s5_ex2_m3,
                                                  s5_ex2_m4 = s5_ex2_m4,
                                                  s5_ex2_m5 = s5_ex2_m5,
                                                  s5_ex2_m6 = s5_ex2_m6,
                                                  s5_ex2_m7 = s5_ex2_m7,
// 3333
                                                  s5_ex3_m1 = s5_ex3_m1,
                                                  s5_ex3_m2 = s5_ex3_m2,
                                                  s5_ex3_m3 = s5_ex3_m3,
                                                  s5_ex3_m4 = s5_ex3_m4,
                                                  s5_ex3_m5 = s5_ex3_m5,
                                                  s5_ex3_m6 = s5_ex3_m6,
                                                  s5_ex3_m7 = s5_ex3_m7,
// 44444
                                                  s5_ex4_m1 = s5_ex4_m1,
                                                  s5_ex4_m2 = s5_ex4_m2,
                                                  s5_ex4_m3 = s5_ex4_m3,
                                                  s5_ex4_m4 = s5_ex4_m4,
                                                  s5_ex4_m5 = s5_ex4_m5,
                                                  s5_ex4_m6 = s5_ex4_m6,
                                                  s5_ex4_m7 = s5_ex4_m7,
// 55555
                                                  s5_ex5_m1 = s5_ex5_m1,
                                                  s5_ex5_m2 = s5_ex5_m2,
                                                  s5_ex5_m3 = s5_ex5_m3,
                                                  s5_ex5_m4 = s5_ex5_m4,
                                                  s5_ex5_m5 = s5_ex5_m5,
                                                  s5_ex5_m6 = s5_ex5_m6,
                                                  s5_ex5_m7 = s5_ex5_m7,

                                                  // sem3 full
                                                  s6_ex1_m1 = s6_ex1_m1,
                                                  s6_ex1_m2 = s6_ex1_m2,
                                                  s6_ex1_m3 = s6_ex1_m3,
                                                  s6_ex1_m4 = s6_ex1_m4,
                                                  s6_ex1_m5 = s6_ex1_m5,
                                                  s6_ex1_m6 = s6_ex1_m6,
                                                  s6_ex1_m7 = s6_ex1_m7,
                                                  // 22
                                                  s6_ex2_m1 = s6_ex2_m1,
                                                  s6_ex2_m2 = s6_ex2_m2,
                                                  s6_ex2_m3 = s6_ex2_m3,
                                                  s6_ex2_m4 = s6_ex2_m4,
                                                  s6_ex2_m5 = s6_ex2_m5,
                                                  s6_ex2_m6 = s6_ex2_m6,
                                                  s6_ex2_m7 = s6_ex2_m7,
// 3333
                                                  s6_ex3_m1 = s6_ex3_m1,
                                                  s6_ex3_m2 = s6_ex3_m2,
                                                  s6_ex3_m3 = s6_ex3_m3,
                                                  s6_ex3_m4 = s6_ex3_m4,
                                                  s6_ex3_m5 = s6_ex3_m5,
                                                  s6_ex3_m6 = s6_ex3_m6,
                                                  s6_ex3_m7 = s6_ex3_m7,
// 44444
                                                  s6_ex4_m1 = s6_ex4_m1,
                                                  s6_ex4_m2 = s6_ex4_m2,
                                                  s6_ex4_m3 = s6_ex4_m3,
                                                  s6_ex4_m4 = s6_ex4_m4,
                                                  s6_ex4_m5 = s6_ex4_m5,
                                                  s6_ex4_m6 = s6_ex4_m6,
                                                  s6_ex4_m7 = s6_ex4_m7,
// 55555
                                                  s6_ex5_m1 = s6_ex5_m1,
                                                  s6_ex5_m2 = s6_ex5_m2,
                                                  s6_ex5_m3 = s6_ex5_m3,
                                                  s6_ex5_m4 = s6_ex5_m4,
                                                  s6_ex5_m5 = s6_ex5_m5,
                                                  s6_ex5_m6 = s6_ex5_m6,
                                                  s6_ex5_m7 = s6_ex5_m7,
                                                  imagepdf = image)));
                                    },
                                    icon: Icon(Icons.print,
                                        color: Colors.blueGrey)),
                                ElevatedButton(
                                  onPressed: () => {alert()},
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromARGB(255, 255, 0, 0)),
                                ),
                              ],
                            ),
                          ),
                        ])),
                  ));
                })));
  }
}
