import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/sem1.dart';
import 'package:flutter_application_1/widgets/sem2.dart';
import 'package:flutter_application_1/widgets/sem3.dart';
import 'package:flutter_application_1/widgets/sem4.dart';
import 'package:flutter_application_1/widgets/sem5.dart';
import 'package:flutter_application_1/widgets/sem6.dart';
import 'package:google_fonts/google_fonts.dart';

class sem_1_widget extends StatefulWidget {
  final String header, id;

  const sem_1_widget(
    BuildContext context, {
    Key? key,
    required this.header,
    required this.id,
  }) : super(key: key);

  @override
  State<sem_1_widget> createState() => _sem_1_widgetState();
}

class _sem_1_widgetState extends State<sem_1_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.header,
        style: GoogleFonts.laila(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          child: SizedBox(
        height: 200,
        width: 500,
        child: sem1(
          context,
          id: widget.id,
        ),
      )),
      SizedBox(
        height: 34,
      ),
    ]);
  }
}

class sem_2_widget extends StatefulWidget {
  final String header, id;

  const sem_2_widget(
    BuildContext context, {
    Key? key,
    required this.header,
    required this.id,
  }) : super(key: key);

  @override
  State<sem_2_widget> createState() => _sem_2_widgetState();
}

class _sem_2_widgetState extends State<sem_2_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.header,
        style: GoogleFonts.laila(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          child: SizedBox(
        height: 200,
        width: 500,
        child: sem2(context, id: widget.id),
      )),
      SizedBox(
        height: 34,
      ),
    ]);
  }
}

class sem_3_widget extends StatefulWidget {
  final String header, id;

  const sem_3_widget(
    BuildContext context, {
    Key? key,
    required this.header,
    required this.id,
  }) : super(key: key);

  @override
  State<sem_3_widget> createState() => _sem_3_widgetState();
}

class _sem_3_widgetState extends State<sem_3_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.header,
        style: GoogleFonts.laila(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          child: SizedBox(
        height: 200,
        width: 500,
        child: sem3(context, id: widget.id),
      )),
      SizedBox(
        height: 34,
      ),
    ]);
  }
}

class sem_4_widget extends StatefulWidget {
  final String header, id;

  const sem_4_widget(
    BuildContext context, {
    Key? key,
    required this.header,
    required this.id,
  }) : super(key: key);

  @override
  State<sem_4_widget> createState() => _sem_4_widgetState();
}

class _sem_4_widgetState extends State<sem_4_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.header,
        style: GoogleFonts.laila(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          child: SizedBox(
        height: 200,
        width: 500,
        child: sem4(context, id: widget.id),
      )),
      SizedBox(
        height: 34,
      ),
    ]);
  }
}

class sem_5_widget extends StatefulWidget {
  final String header, id;

  const sem_5_widget(
    BuildContext context, {
    Key? key,
    required this.header,
    required this.id,
  }) : super(key: key);

  @override
  State<sem_5_widget> createState() => _sem_5_widgetState();
}

class _sem_5_widgetState extends State<sem_5_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.header,
        style: GoogleFonts.laila(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          child: SizedBox(
        height: 200,
        width: 500,
        child: sem5(context, id: widget.id),
      )),
      SizedBox(
        height: 34,
      ),
    ]);
  }
}

class sem_6_widget extends StatefulWidget {
  final String header, id;

  const sem_6_widget(
    BuildContext context, {
    Key? key,
    required this.header,
    required this.id,
  }) : super(key: key);

  @override
  State<sem_6_widget> createState() => _sem_6_widgetState();
}

class _sem_6_widgetState extends State<sem_6_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.header,
        style: GoogleFonts.laila(
            fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Container(
          child: SizedBox(
        height: 200,
        width: 500,
        child: sem6(context, id: widget.id),
      )),
      SizedBox(
        height: 34,
      ),
    ]);
  }
}
