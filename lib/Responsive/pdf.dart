import 'dart:html';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/sem1.dart';
import 'package:flutter_application_1/widgets/sem2.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter_application_1/Responsive/responsive_update.dart';
import 'package:http/http.dart' show get;

class Generatepdf extends StatelessWidget {
  const Generatepdf(
    this.title,
    this.nation,
    this.dob,
    this.f_name,
    this.m_name,
    this.r_address,
    this.roll_no,
    this.gender,
    this.blood_Group,
    this.occupation,
    this.occupat,
    this.m_number,
    this.p_address,
    this.community,
    this.hosteller,
    this.aadhar,
    this.hSC,
    this.hSC_MARK,
    this.hSC_BOARD,
    this.sSLC,
    this.sSLC_MARK,
    this.sSLC_BOARD,
    this.sem1,
    this.sem1m2,
    this.sem1m3,
    this.sem1m4,
    this.sem1m5,
    this.sem1m6,
    this.sem1m7,
    this.sem2m1,
    this.sem2m2,
    this.sem2m3,
    this.sem2m4,
    this.sem2m5,
    this.sem2m6,
    this.sem2m7,
    this.sem3m1,
    this.sem3m2,
    this.sem3m3,
    this.sem3m4,
    this.sem3m5,
    this.sem3m6,
    this.sem3m7,
    this.sem4m1,
    this.sem4m2,
    this.sem4m3,
    this.sem4m4,
    this.sem4m5,
    this.sem4m6,
    this.sem4m7,
    this.sem5m1,
    this.sem5m2,
    this.sem5m3,
    this.sem5m4,
    this.sem5m5,
    this.sem5m6,
    this.sem5m7,
    this.sem2em1,
    this.sem2em2,
    this.sem2em3,
    this.sem2em4,
    this.sem2em5,
    this.sem2em6,
    this.sem2em7,
    this.sem2e2m1,
    this.sem2e2m2,
    this.sem2e2m3,
    this.sem2e2m4,
    this.sem2e2m5,
    this.sem2e2m6,
    this.sem2e2m7,
    this.sem2e3m1,
    this.sem2e3m2,
    this.sem2e3m3,
    this.sem2e3m4,
    this.sem2e3m5,
    this.sem2e3m6,
    this.sem2e3m7,
    this.sem2e4m1,
    this.sem2e4m2,
    this.sem2e4m3,
    this.sem2e4m4,
    this.sem2e4m5,
    this.sem2e4m6,
    this.sem2e4m7,
    this.sem2e5m1,
    this.sem2e5m2,
    this.sem2e5m3,
    this.sem2e5m4,
    this.sem2e5m5,
    this.sem2e5m6,
    this.sem2e5m7,
    this.sem3e1m1,
    this.sem3e1m2,
    this.sem3e1m3,
    this.sem3e1m4,
    this.sem3e1m5,
    this.sem3e1m6,
    this.sem3e1m7,
    this.sem3e2m1,
    this.sem3e2m2,
    this.sem3e2m3,
    this.sem3e2m4,
    this.sem3e2m5,
    this.sem3e2m6,
    this.sem3e2m7,
    this.sem3e3m1,
    this.sem3e3m2,
    this.sem3e3m3,
    this.sem3e3m4,
    this.sem3e3m5,
    this.sem3e3m6,
    this.sem3e3m7,
    this.sem3e4m1,
    this.sem3e4m2,
    this.sem3e4m3,
    this.sem3e4m4,
    this.sem3e4m5,
    this.sem3e4m6,
    this.sem3e4m7,
    this.sem3e5m1,
    this.sem3e5m2,
    this.sem3e5m3,
    this.sem3e5m4,
    this.sem3e5m5,
    this.sem3e5m6,
    this.sem3e5m7,
    this.sem4e1m1,
    this.sem4e1m2,
    this.sem4e1m3,
    this.sem4e1m4,
    this.sem4e1m5,
    this.sem4e1m6,
    this.sem4e1m7,
    this.sem4e2m1,
    this.sem4e2m2,
    this.sem4e2m3,
    this.sem4e2m4,
    this.sem4e2m5,
    this.sem4e2m6,
    this.sem4e2m7,
    this.sem4e3m1,
    this.sem4e3m2,
    this.sem4e3m3,
    this.sem4e3m4,
    this.sem4e3m5,
    this.sem4e3m6,
    this.sem4e3m7,
    this.sem4e4m1,
    this.sem4e4m2,
    this.sem4e4m3,
    this.sem4e4m4,
    this.sem4e4m5,
    this.sem4e4m6,
    this.sem4e4m7,
    this.sem4e5m1,
    this.sem4e5m2,
    this.sem4e5m3,
    this.sem4e5m4,
    this.sem4e5m5,
    this.sem4e5m6,
    this.sem4e5m7,
    this.sem5e1m1,
    this.sem5e1m2,
    this.sem5e1m3,
    this.sem5e1m4,
    this.sem5e1m5,
    this.sem5e1m6,
    this.sem5e1m7,
    this.sem5e2m1,
    this.sem5e2m2,
    this.sem5e2m3,
    this.sem5e2m4,
    this.sem5e2m5,
    this.sem5e2m6,
    this.sem5e2m7,
    this.sem5e3m1,
    this.sem5e3m2,
    this.sem5e3m3,
    this.sem5e3m4,
    this.sem5e3m5,
    this.sem5e3m6,
    this.sem5e3m7,
    this.sem5e4m1,
    this.sem5e4m2,
    this.sem5e4m3,
    this.sem5e4m4,
    this.sem5e4m5,
    this.sem5e4m6,
    this.sem5e4m7,
    this.sem5e5m1,
    this.sem5e5m2,
    this.sem5e5m3,
    this.sem5e5m4,
    this.sem5e5m5,
    this.sem5e5m6,
    this.sem5e5m7,
    this.sem6e1m1,
    this.sem6e1m2,
    this.sem6e1m3,
    this.sem6e1m4,
    this.sem6e1m5,
    this.sem6e1m6,
    this.sem6e1m7,
    this.sem6e2m1,
    this.sem6e2m2,
    this.sem6e2m3,
    this.sem6e2m4,
    this.sem6e2m5,
    this.sem6e2m6,
    this.sem6e2m7,
    this.sem6e3m1,
    this.sem6e3m2,
    this.sem6e3m3,
    this.sem6e3m4,
    this.sem6e3m5,
    this.sem6e3m6,
    this.sem6e3m7,
    this.sem6e4m1,
    this.sem6e4m2,
    this.sem6e4m3,
    this.sem6e4m4,
    this.sem6e4m5,
    this.sem6e4m6,
    this.sem6e4m7,
    this.sem6e5m1,
    this.sem6e5m2,
    this.sem6e5m3,
    this.sem6e5m4,
    this.sem6e5m5,
    this.sem6e5m6,
    this.sem6e5m7,
    this.imagepdf, {
    Key? key,
  }) : super(key: key);

  final title;
  final nation;
  final dob;

  final f_name;
  final m_name;
  final r_address;
  final roll_no;
  final gender;
  final blood_Group;
  final occupation;
  final occupat;
  final m_number;
  final p_address;
  final community;
  final hosteller;
  final aadhar;
  final hSC;
  final hSC_MARK;
  final hSC_BOARD;
  final sSLC;
  final sSLC_MARK;
  final sSLC_BOARD;
  final sem1;
  final sem1m2;
  final sem1m3;
  final sem1m4;
  final sem1m5;
  final sem1m6;
  final sem1m7;

  final sem2m1;
  final sem2m2;
  final sem2m3;
  final sem2m4;
  final sem2m5;
  final sem2m6;
  final sem2m7;

  final sem3m1;
  final sem3m2;
  final sem3m3;
  final sem3m4;
  final sem3m5;
  final sem3m6;
  final sem3m7;
  final sem4m1;
  final sem4m2;
  final sem4m3;
  final sem4m4;
  final sem4m5;
  final sem4m6;
  final sem4m7;
  final sem5m1;
  final sem5m2;
  final sem5m3;
  final sem5m4;
  final sem5m5;
  final sem5m6;
  final sem5m7;

  // 1111111 sem 2
  final sem2em1;
  final sem2em2;
  final sem2em3;
  final sem2em4;
  final sem2em5;
  final sem2em6;
  final sem2em7;
// 22222222222222222222222
  final sem2e2m1;
  final sem2e2m2;
  final sem2e2m3;
  final sem2e2m4;
  final sem2e2m5;
  final sem2e2m6;
  final sem2e2m7;
// 33333333333333333333333
  final sem2e3m1;
  final sem2e3m2;
  final sem2e3m3;
  final sem2e3m4;
  final sem2e3m5;
  final sem2e3m6;
  final sem2e3m7;
//44444444444444444444
  final sem2e4m1;
  final sem2e4m2;
  final sem2e4m3;
  final sem2e4m4;
  final sem2e4m5;
  final sem2e4m6;
  final sem2e4m7;
// 55555555555
  final sem2e5m1;
  final sem2e5m2;
  final sem2e5m3;
  final sem2e5m4;
  final sem2e5m5;
  final sem2e5m6;
  final sem2e5m7;

  // 1111111 sem 3
  final sem3e1m1;
  final sem3e1m2;
  final sem3e1m3;
  final sem3e1m4;
  final sem3e1m5;
  final sem3e1m6;
  final sem3e1m7;
// 22222222222222222222222
  final sem3e2m1;
  final sem3e2m2;
  final sem3e2m3;
  final sem3e2m4;
  final sem3e2m5;
  final sem3e2m6;
  final sem3e2m7;
// 33333333333333333333333
  final sem3e3m1;
  final sem3e3m2;
  final sem3e3m3;
  final sem3e3m4;
  final sem3e3m5;
  final sem3e3m6;
  final sem3e3m7;
//44444444444444444444
  final sem3e4m1;
  final sem3e4m2;
  final sem3e4m3;
  final sem3e4m4;
  final sem3e4m5;
  final sem3e4m6;
  final sem3e4m7;
// 55555555555
  final sem3e5m1;
  final sem3e5m2;
  final sem3e5m3;
  final sem3e5m4;
  final sem3e5m5;
  final sem3e5m6;
  final sem3e5m7;

  // 1111111 sem 4
  final sem4e1m1;
  final sem4e1m2;
  final sem4e1m3;
  final sem4e1m4;
  final sem4e1m5;
  final sem4e1m6;
  final sem4e1m7;
// 22222222222222222222222
  final sem4e2m1;
  final sem4e2m2;
  final sem4e2m3;
  final sem4e2m4;
  final sem4e2m5;
  final sem4e2m6;
  final sem4e2m7;
// 33333333333333333333333
  final sem4e3m1;
  final sem4e3m2;
  final sem4e3m3;
  final sem4e3m4;
  final sem4e3m5;
  final sem4e3m6;
  final sem4e3m7;
//44444444444444444444
  final sem4e4m1;
  final sem4e4m2;
  final sem4e4m3;
  final sem4e4m4;
  final sem4e4m5;
  final sem4e4m6;
  final sem4e4m7;
// 55555555555
  final sem4e5m1;
  final sem4e5m2;
  final sem4e5m3;
  final sem4e5m4;
  final sem4e5m5;
  final sem4e5m6;
  final sem4e5m7;
  // 1111111
  final sem5e1m1;
  final sem5e1m2;
  final sem5e1m3;
  final sem5e1m4;
  final sem5e1m5;
  final sem5e1m6;
  final sem5e1m7;
// 22222222222222222222222
  final sem5e2m1;
  final sem5e2m2;
  final sem5e2m3;
  final sem5e2m4;
  final sem5e2m5;
  final sem5e2m6;
  final sem5e2m7;
// 33333333333333333333333
  final sem5e3m1;
  final sem5e3m2;
  final sem5e3m3;
  final sem5e3m4;
  final sem5e3m5;
  final sem5e3m6;
  final sem5e3m7;
//44444444444444444444
  final sem5e4m1;
  final sem5e4m2;
  final sem5e4m3;
  final sem5e4m4;
  final sem5e4m5;
  final sem5e4m6;
  final sem5e4m7;
// 55555555555
  final sem5e5m1;
  final sem5e5m2;
  final sem5e5m3;
  final sem5e5m4;
  final sem5e5m5;
  final sem5e5m6;
  final sem5e5m7;
  // 1111111 sem 6
  final sem6e1m1;
  final sem6e1m2;
  final sem6e1m3;
  final sem6e1m4;
  final sem6e1m5;
  final sem6e1m6;
  final sem6e1m7;
// 22222222222222222222222
  final sem6e2m1;
  final sem6e2m2;
  final sem6e2m3;
  final sem6e2m4;
  final sem6e2m5;
  final sem6e2m6;
  final sem6e2m7;
// 33333333333333333333333
  final sem6e3m1;
  final sem6e3m2;
  final sem6e3m3;
  final sem6e3m4;
  final sem6e3m5;
  final sem6e3m6;
  final sem6e3m7;
//44444444444444444444
  final sem6e4m1;
  final sem6e4m2;
  final sem6e4m3;
  final sem6e4m4;
  final sem6e4m5;
  final sem6e4m6;
  final sem6e4m7;
// 55555555555
  final sem6e5m1;
  final sem6e5m2;
  final sem6e5m3;
  final sem6e5m4;
  final sem6e5m5;
  final sem6e5m6;
  final sem6e5m7;

  final imagepdf;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("PrinterDialog")),
        body: PdfPreview(
          build: (format) => generatePdf(
            format,
            title,
            dob,
            nation,
            f_name,
            m_name,
            r_address,
            roll_no,
            gender,
            blood_Group,
            occupation,
            occupat,
            m_number,
            p_address,
            community,
            hosteller,
            aadhar,
            hSC,
            hSC_MARK,
            hSC_BOARD,
            sSLC,
            sSLC_MARK,
            sSLC_BOARD,
            // 1111111
            sem1,
            sem1m2,
            sem1m3,
            sem1m4,
            sem1m5,
            sem1m6,
            sem1m7,
// 22222222222222222222222
            sem2m1,
            sem2m2,
            sem2m3,
            sem2m4,
            sem2m5,
            sem2m6,
            sem2m7,
// 33333333333333333333333
            sem3m1,
            sem3m2,
            sem3m3,
            sem3m4,
            sem3m5,
            sem3m6,
            sem3m7,
//44444444444444444444
            sem4m1,
            sem4m2,
            sem4m3,
            sem4m4,
            sem4m5,
            sem4m6,
            sem4m7,
// 55555555555
            sem5m1,
            sem5m2,
            sem5m3,
            sem5m4,
            sem5m5,
            sem5m6,
            sem5m7,
// 1111111 sem 2
            sem2em1,
            sem2em2,
            sem2em3,
            sem2em4,
            sem2em5,
            sem2em6,
            sem2em7,
// 22222222222222222222222
            sem2e2m1,
            sem2e2m2,
            sem2e2m3,
            sem2e2m4,
            sem2e2m5,
            sem2e2m6,
            sem2e2m7,
// 33333333333333333333333
            sem2e3m1,
            sem2e3m2,
            sem2e3m3,
            sem2e3m4,
            sem2e3m5,
            sem2e3m6,
            sem2e3m7,
//44444444444444444444
            sem2e4m1,
            sem2e4m2,
            sem2e4m3,
            sem2e4m4,
            sem2e4m5,
            sem2e4m6,
            sem2e4m7,
// 55555555555
            sem2e5m1,
            sem2e5m2,
            sem2e5m3,
            sem2e5m4,
            sem2e5m5,
            sem2e5m6,
            sem2e5m7,

            // 1111111 sem 3
            sem3e1m1,
            sem3e1m2,
            sem3e1m3,
            sem3e1m4,
            sem3e1m5,
            sem3e1m6,
            sem3e1m7,
// 22222222222222222222222
            sem3e2m1,
            sem3e2m2,
            sem3e2m3,
            sem3e2m4,
            sem3e2m5,
            sem3e2m6,
            sem3e2m7,
// 33333333333333333333333
            sem3e3m1,
            sem3e3m2,
            sem3e3m3,
            sem3e3m4,
            sem3e3m5,
            sem3e3m6,
            sem3e3m7,
//44444444444444444444
            sem3e4m1,
            sem3e4m2,
            sem3e4m3,
            sem3e4m4,
            sem3e4m5,
            sem3e4m6,
            sem3e4m7,
// 55555555555
            sem3e5m1,
            sem3e5m2,
            sem3e5m3,
            sem3e5m4,
            sem3e5m5,
            sem3e5m6,
            sem3e5m7,
            // 1111111 sem 4
            sem4e1m1,
            sem4e1m2,
            sem4e1m3,
            sem4e1m4,
            sem4e1m5,
            sem4e1m6,
            sem4e1m7,
// 22222222222222222222222
            sem4e2m1,
            sem4e2m2,
            sem4e2m3,
            sem4e2m4,
            sem4e2m5,
            sem4e2m6,
            sem4e2m7,
// 33333333333333333333333
            sem4e3m1,
            sem4e3m2,
            sem4e3m3,
            sem4e3m4,
            sem4e3m5,
            sem4e3m6,
            sem4e3m7,
//44444444444444444444
            sem4e4m1,
            sem4e4m2,
            sem4e4m3,
            sem4e4m4,
            sem4e4m5,
            sem4e4m6,
            sem4e4m7,
// 55555555555
            sem4e5m1,
            sem4e5m2,
            sem4e5m3,
            sem4e5m4,
            sem4e5m5,
            sem4e5m6,
            sem4e5m7,
            // 1111111 sem 5
            sem5e1m1,
            sem5e1m2,
            sem5e1m3,
            sem5e1m4,
            sem5e1m5,
            sem5e1m6,
            sem5e1m7,
// 22222222222222222222222
            sem5e2m1,
            sem5e2m2,
            sem5e2m3,
            sem5e2m4,
            sem5e2m5,
            sem5e2m6,
            sem5e2m7,
// 33333333333333333333333
            sem5e3m1,
            sem5e3m2,
            sem5e3m3,
            sem5e3m4,
            sem5e3m5,
            sem5e3m6,
            sem5e3m7,
//44444444444444444444
            sem5e4m1,
            sem5e4m2,
            sem5e4m3,
            sem5e4m4,
            sem5e4m5,
            sem5e4m6,
            sem5e4m7,
// 55555555555
            sem5e5m1,
            sem5e5m2,
            sem5e5m3,
            sem5e5m4,
            sem5e5m5,
            sem5e5m6,
            sem5e5m7,
            // 1111111 sem 6
            sem6e1m1,
            sem6e1m2,
            sem6e1m3,
            sem6e1m4,
            sem6e1m5,
            sem6e1m6,
            sem6e1m7,
// 22222222222222222222222
            sem6e2m1,
            sem6e2m2,
            sem6e2m3,
            sem6e2m4,
            sem6e2m5,
            sem6e2m6,
            sem6e2m7,
// 33333333333333333333333
            sem6e3m1,
            sem6e3m2,
            sem6e3m3,
            sem6e3m4,
            sem6e3m5,
            sem6e3m6,
            sem6e3m7,
//44444444444444444444
            sem6e4m1,
            sem6e4m2,
            sem6e4m3,
            sem6e4m4,
            sem6e4m5,
            sem6e4m6,
            sem6e4m7,
// 55555555555
            sem6e5m1,
            sem6e5m2,
            sem6e5m3,
            sem6e5m4,
            sem6e5m5,
            sem6e5m6,
            sem6e5m7,
            imagepdf,
          ),
        ),
      ),
    );
  }

  Future<Uint8List> generatePdf(
    PdfPageFormat format,
    title,
    dob,
    nation,
    f_name,
    m_name,
    r_address,
    roll_no,
    gender,
    blood_Group,
    occupation,
    occupat2,
    m_no,
    p_address,
    community,
    hosteller,
    aadhar,
    hSC,
    hSC_MARK,
    hSC_BOARD,
    sSLC,
    sSLC_MARK,
    sSLC_BOARD,
    sem1,
    sem1m2,
    sem1m3,
    sem1m4,
    sem1m5,
    sem1m6,
    sem1m7,
    // 22222222222222222222222
    sem2m1,
    sem2m2,
    sem2m3,
    sem2m4,
    sem2m5,
    sem2m6,
    sem2m7,
// 33333333333333333333333
    sem3m1,
    sem3m2,
    sem3m3,
    sem3m4,
    sem3m5,
    sem3m6,
    sem3m7,
//44444444444444444444
    sem4m1,
    sem4m2,
    sem4m3,
    sem4m4,
    sem4m5,
    sem4m6,
    sem4m7,
// 55555555555
    sem5m1,
    sem5m2,
    sem5m3,
    sem5m4,
    sem5m5,
    sem5m6,
    sem5m7,
    // 1111111 sem 2
    sem2em1,
    sem2em2,
    sem2em3,
    sem2em4,
    sem2em5,
    sem2em6,
    sem2em7,
// 22222222222222222222222
    sem2e2m1,
    sem2e2m2,
    sem2e2m3,
    sem2e2m4,
    sem2e2m5,
    sem2e2m6,
    sem2e2m7,
// 33333333333333333333333
    sem2e3m1,
    sem2e3m2,
    sem2e3m3,
    sem2e3m4,
    sem2e3m5,
    sem2e3m6,
    sem2e3m7,
//44444444444444444444
    sem2e4m1,
    sem2e4m2,
    sem2e4m3,
    sem2e4m4,
    sem2e4m5,
    sem2e4m6,
    sem2e4m7,
// 55555555555
    sem2e5m1,
    sem2e5m2,
    sem2e5m3,
    sem2e5m4,
    sem2e5m5,
    sem2e5m6,
    sem2e5m7,
    // 1111111 sem 3
    sem3e1m1,
    sem3e1m2,
    sem3e1m3,
    sem3e1m4,
    sem3e1m5,
    sem3e1m6,
    sem3e1m7,
// 22222222222222222222222
    sem3e2m1,
    sem3e2m2,
    sem3e2m3,
    sem3e2m4,
    sem3e2m5,
    sem3e2m6,
    sem3e2m7,
// 33333333333333333333333
    sem3e3m1,
    sem3e3m2,
    sem3e3m3,
    sem3e3m4,
    sem3e3m5,
    sem3e3m6,
    sem3e3m7,
//44444444444444444444
    sem3e4m1,
    sem3e4m2,
    sem3e4m3,
    sem3e4m4,
    sem3e4m5,
    sem3e4m6,
    sem3e4m7,
// 55555555555
    sem3e5m1,
    sem3e5m2,
    sem3e5m3,
    sem3e5m4,
    sem3e5m5,
    sem3e5m6,
    sem3e5m7,
    // 1111111 sem 4
    sem4e1m1,
    sem4e1m2,
    sem4e1m3,
    sem4e1m4,
    sem4e1m5,
    sem4e1m6,
    sem4e1m7,
// 22222222222222222222222
    sem4e2m1,
    sem4e2m2,
    sem4e2m3,
    sem4e2m4,
    sem4e2m5,
    sem4e2m6,
    sem4e2m7,
// 33333333333333333333333
    sem4e3m1,
    sem4e3m2,
    sem4e3m3,
    sem4e3m4,
    sem4e3m5,
    sem4e3m6,
    sem4e3m7,
//44444444444444444444
    sem4e4m1,
    sem4e4m2,
    sem4e4m3,
    sem4e4m4,
    sem4e4m5,
    sem4e4m6,
    sem4e4m7,
// 55555555555
    sem4e5m1,
    sem4e5m2,
    sem4e5m3,
    sem4e5m4,
    sem4e5m5,
    sem4e5m6,
    sem4e5m7,
    // 1111111 sem 5
    sem5e1m1,
    sem5e1m2,
    sem5e1m3,
    sem5e1m4,
    sem5e1m5,
    sem5e1m6,
    sem5e1m7,
// 22222222222222222222222
    sem5e2m1,
    sem5e2m2,
    sem5e2m3,
    sem5e2m4,
    sem5e2m5,
    sem5e2m6,
    sem5e2m7,
// 33333333333333333333333
    sem5e3m1,
    sem5e3m2,
    sem5e3m3,
    sem5e3m4,
    sem5e3m5,
    sem5e3m6,
    sem5e3m7,
//44444444444444444444
    sem5e4m1,
    sem5e4m2,
    sem5e4m3,
    sem5e4m4,
    sem5e4m5,
    sem5e4m6,
    sem5e4m7,
// 55555555555
    sem5e5m1,
    sem5e5m2,
    sem5e5m3,
    sem5e5m4,
    sem5e5m5,
    sem5e5m6,
    sem5e5m7,
    // 1111111 sem 6
    sem6e1m1,
    sem6e1m2,
    sem6e1m3,
    sem6e1m4,
    sem6e1m5,
    sem6e1m6,
    sem6e1m7,
// 22222222222222222222222
    sem6e2m1,
    sem6e2m2,
    sem6e2m3,
    sem6e2m4,
    sem6e2m5,
    sem6e2m6,
    sem6e2m7,
// 33333333333333333333333
    sem6e3m1,
    sem6e3m2,
    sem6e3m3,
    sem6e3m4,
    sem6e3m5,
    sem6e3m6,
    sem6e3m7,
//44444444444444444444
    sem6e4m1,
    sem6e4m2,
    sem6e4m3,
    sem6e4m4,
    sem6e4m5,
    sem6e4m6,
    sem6e4m7,
// 55555555555
    sem6e5m1,
    sem6e5m2,
    sem6e5m3,
    sem6e5m4,
    sem6e5m5,
    sem6e5m6,
    sem6e5m7,
    imagepdf,
  ) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.poppinsLight();
    //final image = await flutterImageProvider(NetworkImage(imagepdf));
    pdf.addPage(
      pw.MultiPage(
        build: (context) => [
          pw.Container(
              padding: pw.EdgeInsets.all(8),
              decoration: pw.BoxDecoration(border: pw.Border.all()),
              child: pw.Column(children: [
                pw.SizedBox(height: 10),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(bottom: 15),
                  child: pw.Center(
                    child: pw.Column(children: [
                      pw.Text("DEPARTMENT OF COMPUTER APPLICATION"),
                      // pw.Text("")
                    ]),
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Padding(
                    padding: pw.EdgeInsets.all(2),
                    child: pw.Row(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                        children: [
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Name : $title",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("D.O.B : $dob",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Nationality : $nation",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 180,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Mother's Name : $f_name",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 180,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Father's Name : $m_name",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Address: $r_address",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Community: $community",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("AADHAR NUMBER : $aadhar",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 240,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("10th Mark  : $sSLC_MARK",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("School : $sSLC",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("10th Board : $sSLC_BOARD",
                                      style: pw.TextStyle(font: font)),
                                ),
                              ]),
                          pw.SizedBox(width: 20),
                          pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Register no : $roll_no",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Gender : $gender",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Blood Group : $blood_Group",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text(
                                      "Father/Mother Occupation : $occupation",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Bus Stop : $occupat2",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Contact Number: $m_no",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Email : $p_address",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("Mode : $hosteller",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("12th Mark : $hSC_MARK",
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("School : $hSC",
                                      overflow: pw.TextOverflow.visible,
                                      style: pw.TextStyle(font: font)),
                                ),
                                pw.SizedBox(height: 2),
                                pw.Container(
                                  width: 190,
                                  padding: const pw.EdgeInsets.all(1),
                                  child: pw.Text("12th Board : $hSC_BOARD",
                                      style: pw.TextStyle(font: font)),
                                ),
                              ])
                        ])),
                pw.Divider(height: 5),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 10),
                  child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Column(children: [
                          pw.Text("Semester I"),
                          pw.Container(
                            width: 100,
                            height: 200,
                            // padding: const pw.EdgeInsets.all(1),
                            child: pw.Table.fromTextArray(
                                cellStyle: const pw.TextStyle(
                                  fontSize: 9,
                                ),
                                cellAlignment: pw.Alignment.center,
                                cellPadding:
                                    const pw.EdgeInsets.only(top: 3, bottom: 3),
                                context: context,
                                data: <List<String>>[
                                  <String>[
                                    ' s ',
                                    ' 1 ',
                                    ' 2 ',
                                    ' 3 ',
                                    " 4 ",
                                    " 5 "
                                  ],
                                  <String>[
                                    '1',
                                    '$sem1',
                                    '$sem2m1',
                                    "$sem3m1",
                                    "$sem4m1",
                                    "$sem5m1"
                                  ],
                                  <String>[
                                    '2',
                                    '$sem1m2',
                                    '$sem2m2',
                                    '$sem3m2',
                                    "$sem4m2",
                                    "$sem5m2"
                                  ],
                                  <String>[
                                    '3',
                                    '$sem1m3',
                                    '$sem2m3',
                                    '$sem3m3',
                                    "$sem4m3",
                                    "$sem5m3"
                                  ],
                                  <String>[
                                    '4',
                                    '$sem1m4',
                                    '$sem2m4',
                                    '$sem3m4',
                                    "$sem4m4",
                                    "$sem5m4"
                                  ],
                                  <String>[
                                    '5',
                                    '$sem1m5',
                                    '$sem2m5',
                                    '$sem3m5',
                                    "$sem4m5",
                                    "$sem5m5"
                                  ],
                                  <String>[
                                    '6',
                                    '$sem1m6',
                                    '$sem2m6',
                                    '$sem3m6',
                                    "$sem4m6",
                                    "$sem5m6"
                                  ],
                                  <String>[
                                    '7',
                                    '$sem1m7',
                                    '$sem2m7',
                                    '$sem3m7',
                                    "$sem4m7",
                                    "$sem5m7"
                                  ],
                                ]),
                          ),
                        ]),
                        pw.Column(children: [
                          pw.Text("Semester II"),
                          pw.Container(
                            width: 100,
                            height: 200,
                            // padding: const pw.EdgeInsets.all(1),
                            child: pw.Table.fromTextArray(
                                cellAlignment: pw.Alignment.center,
                                cellPadding:
                                    const pw.EdgeInsets.only(top: 3, bottom: 3),
                                context: context,
                                data: <List<String>>[
                                  <String>[
                                    ' s ',
                                    ' 1 ',
                                    ' 2 ',
                                    ' 3 ',
                                    " 4 ",
                                    " 5 "
                                  ],
                                  <String>[
                                    "1",
                                    '$sem2em1',
                                    '$sem2e2m1',
                                    '$sem2e3m1',
                                    '$sem2e4m1',
                                    "$sem2e5m1",
                                  ],
                                  <String>[
                                    '2',
                                    '$sem2em2',
                                    '$sem2e2m2',
                                    '$sem2e3m2',
                                    "$sem2e4m2",
                                    "$sem2e5m2"
                                  ],
                                  <String>[
                                    '3',
                                    '$sem2em3',
                                    '$sem2e2m3',
                                    '$sem2e3m3',
                                    "$sem2e4m3",
                                    "$sem2e5m3"
                                  ],
                                  <String>[
                                    '4',
                                    '$sem2em4',
                                    '$sem2e2m4',
                                    '$sem2e3m4',
                                    "$sem2e4m4",
                                    "$sem2e5m4"
                                  ],
                                  <String>[
                                    '5',
                                    '$sem2em5',
                                    '$sem2e2m5',
                                    '$sem2e3m5',
                                    "$sem2e4m5",
                                    "$sem2e5m5"
                                  ],
                                  <String>[
                                    '6',
                                    '$sem2em6',
                                    '$sem2e2m6',
                                    '$sem2e3m6',
                                    "$sem2e4m6",
                                    "$sem2e5m6"
                                  ],
                                  <String>[
                                    '7',
                                    '$sem2em7',
                                    '$sem2e2m7',
                                    '$sem2e3m7',
                                    "$sem2e4m7",
                                    "$sem2e5m7"
                                  ],
                                ]),
                          ),
                        ]),
                        pw.Column(children: [
                          pw.Text("Semester III"),
                          pw.Container(
                            width: 100,
                            height: 200,
                            // padding: const pw.EdgeInsets.all(1),
                            child: pw.Table.fromTextArray(
                                cellAlignment: pw.Alignment.center,
                                cellPadding:
                                    const pw.EdgeInsets.only(top: 3, bottom: 3),
                                context: context,
                                data: <List<String>>[
                                  <String>[
                                    ' s ',
                                    ' 1 ',
                                    ' 2 ',
                                    ' 3 ',
                                    " 4 ",
                                    " 5 "
                                  ],
                                  <String>[
                                    "1",
                                    '$sem3e1m1',
                                    '$sem3e2m1',
                                    '$sem3e3m1',
                                    "$sem3e4m1",
                                    "$sem3e5m1"
                                  ],
                                  <String>[
                                    '2',
                                    '$sem3e1m2',
                                    '$sem3e2m2',
                                    '$sem3e3m2',
                                    "$sem3e4m2",
                                    "$sem3e5m2"
                                  ],
                                  <String>[
                                    '3',
                                    '$sem3e1m3',
                                    '$sem3e2m3',
                                    '$sem3e3m3',
                                    "$sem3e4m3",
                                    "$sem3e5m3"
                                  ],
                                  <String>[
                                    '4',
                                    '$sem3e1m4',
                                    '$sem3e2m4',
                                    '$sem3e3m4',
                                    "$sem3e4m4",
                                    "$sem3e5m4"
                                  ],
                                  <String>[
                                    '5',
                                    '$sem3e1m5',
                                    '$sem3e2m5',
                                    '$sem3e3m5',
                                    "$sem3e4m5",
                                    "$sem3e5m5"
                                  ],
                                  <String>[
                                    '6',
                                    '$sem3e1m6',
                                    '$sem3e2m6',
                                    '$sem3e3m6',
                                    "$sem3e4m6",
                                    "$sem3e5m6"
                                  ],
                                  <String>[
                                    '7',
                                    '$sem3e1m7',
                                    '$sem3e2m7',
                                    '$sem3e3m7',
                                    "$sem3e4m7",
                                    "$sem3e5m7"
                                  ],
                                ]),
                          ),
                        ])
                      ]),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 10),
                  child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Column(children: [
                          pw.Text("Semester IV"),
                          pw.Container(
                            width: 100,
                            height: 200,
                            // padding: const pw.EdgeInsets.all(1),
                            child: pw.Table.fromTextArray(
                                cellPadding:
                                    const pw.EdgeInsets.only(top: 3, bottom: 3),
                                cellAlignment: pw.Alignment.center,
                                context: context,
                                data: <List<String>>[
                                  <String>[
                                    ' s ',
                                    ' 1 ',
                                    ' 2 ',
                                    ' 3 ',
                                    " 4 ",
                                    " 5 "
                                  ],
                                  <String>[
                                    "1",
                                    '$sem4e1m1',
                                    '$sem4e2m1',
                                    '$sem4e3m1',
                                    "$sem4e4m1",
                                    "$sem4e5m1"
                                  ],
                                  <String>[
                                    '2',
                                    '$sem4e1m2',
                                    '$sem4e2m2',
                                    '$sem4e3m2',
                                    "$sem4e4m2",
                                    "$sem4e5m2"
                                  ],
                                  <String>[
                                    '3',
                                    '$sem4e1m3',
                                    '$sem4e2m3',
                                    '$sem4e3m3',
                                    "$sem4e4m3",
                                    "$sem4e5m3"
                                  ],
                                  <String>[
                                    '4',
                                    '$sem4e1m4',
                                    '$sem4e2m4',
                                    '$sem4e3m4',
                                    "$sem4e4m4",
                                    "$sem4e5m4"
                                  ],
                                  <String>[
                                    '5',
                                    '$sem4e1m5',
                                    '$sem4e2m5',
                                    '$sem4e3m5',
                                    "$sem4e4m5",
                                    "$sem4e5m5"
                                  ],
                                  <String>[
                                    '6',
                                    '$sem4e1m6',
                                    '$sem4e2m6',
                                    '$sem4e3m6',
                                    "$sem4e4m6",
                                    "$sem4e5m6"
                                  ],
                                  <String>[
                                    '7',
                                    '$sem4e1m7',
                                    '$sem4e2m7',
                                    '$sem4e3m7',
                                    "$sem4e4m7",
                                    "$sem4e5m7"
                                  ],
                                ]),
                          ),
                        ]),
                        pw.Column(children: [
                          pw.Text("Semester V"),
                          pw.Container(
                            width: 100,
                            height: 200,
                            // padding: const pw.EdgeInsets.all(1),
                            child: pw.Table.fromTextArray(
                                cellPadding:
                                    const pw.EdgeInsets.only(top: 3, bottom: 3),
                                cellAlignment: pw.Alignment.center,
                                context: context,
                                data: <List<String>>[
                                  <String>[
                                    ' s ',
                                    ' 1 ',
                                    ' 2 ',
                                    ' 3 ',
                                    " 4 ",
                                    " 5 "
                                  ],
                                  <String>[
                                    "1",
                                    '$sem5e1m1',
                                    '$sem5e2m1',
                                    '$sem5e3m1',
                                    "$sem5e4m1",
                                    "$sem5e5m1"
                                  ],
                                  <String>[
                                    '2',
                                    '$sem5e1m2',
                                    '$sem5e2m2',
                                    '$sem5e3m2',
                                    "$sem5e4m2",
                                    "$sem5e5m2"
                                  ],
                                  <String>[
                                    '3',
                                    '$sem5e1m3',
                                    '$sem5e2m3',
                                    '$sem5e3m3',
                                    "$sem5e4m3",
                                    "$sem5e5m3"
                                  ],
                                  <String>[
                                    '4',
                                    '$sem5e1m4',
                                    '$sem5e2m4',
                                    '$sem5e3m4',
                                    "$sem5e3m4",
                                    "$sem5e4m4"
                                  ],
                                  <String>[
                                    '5',
                                    '$sem5e1m5',
                                    '$sem5e2m5',
                                    '$sem5e3m5',
                                    "$sem5e4m5",
                                    "$sem5e5m5"
                                  ],
                                  <String>[
                                    '6',
                                    '$sem5e1m6',
                                    '$sem5e2m6',
                                    '$sem5e3m6',
                                    "$sem5e4m6",
                                    "$sem5e5m6"
                                  ],
                                  <String>[
                                    '7',
                                    '$sem5e1m7',
                                    '$sem5e2m7',
                                    '$sem5e3m7',
                                    "$sem5e4m7",
                                    "$sem5e5m7"
                                  ],
                                ]),
                          ),
                        ]),
                        pw.Column(children: [
                          pw.Text("Semester VI"),
                          pw.Container(
                            width: 100,
                            height: 200,
                            // padding: const pw.EdgeInsets.all(1),
                            child: pw.Table.fromTextArray(
                                cellAlignment: pw.Alignment.center,
                                cellPadding:
                                    const pw.EdgeInsets.only(top: 3, bottom: 3),
                                context: context,
                                data: <List<String>>[
                                  <String>[
                                    ' s ',
                                    ' 1 ',
                                    ' 2 ',
                                    ' 3 ',
                                    " 4 ",
                                    " 5 "
                                  ],
                                  <String>[
                                    "1",
                                    '$sem6e1m1',
                                    '$sem6e2m1',
                                    '$sem6e3m1',
                                    "$sem6e4m1",
                                    "$sem6e5m1"
                                  ],
                                  <String>[
                                    '2',
                                    '$sem6e1m2',
                                    '$sem6e2m2',
                                    '$sem6e3m2',
                                    "$sem6e4m2",
                                    "$sem6e5m2"
                                  ],
                                  <String>[
                                    '3',
                                    '$sem6e1m3',
                                    '$sem6e2m3',
                                    '$sem6e3m3',
                                    "$sem6e4m3",
                                    "$sem6e5m3"
                                  ],
                                  <String>[
                                    '4',
                                    '$sem6e1m4',
                                    '$sem6e2m4',
                                    '$sem6e3m4',
                                    "$sem6e4m4",
                                    "$sem6e5m4"
                                  ],
                                  <String>[
                                    '5',
                                    '$sem6e1m5',
                                    '$sem6e2m5',
                                    '$sem6e3m5',
                                    "$sem6e4m5",
                                    "$sem6e5m5"
                                  ],
                                  <String>[
                                    '6',
                                    '$sem6e1m6',
                                    '$sem6e2m6',
                                    '$sem6e3m6',
                                    "$sem6e4m6",
                                    "$sem6e5m6"
                                  ],
                                  <String>[
                                    '7',
                                    '$sem6e1m7',
                                    '$sem6e2m7',
                                    '$sem6e3m7',
                                    "$sem6e4m7",
                                    "$sem6e5m7"
                                  ],
                                ]),
                          ),
                        ])
                      ]),
                ),
              ]))
        ],
      ),
    );

    return pdf.save();
  }
}
