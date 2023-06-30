import 'package:flutter/material.dart';
import 'package:flutter_application_1/Responsive/responsive_update.dart';
import 'package:google_fonts/google_fonts.dart';

class desktop extends StatefulWidget {
  const desktop({Key? key}) : super(key: key);

  @override
  State<desktop> createState() => _desktopState();
}

class _desktopState extends State<desktop> {
  final _formKey = GlobalKey<FormState>();
  final roll_id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin Panel")),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Text(
                "Admin Panel for CA Students",
                style: GoogleFonts.faustina(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 42, 0, 86),
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                    shadows: [
                      const Shadow(
                          blurRadius: 2,
                          color: Color.fromARGB(255, 207, 207, 207))
                    ]),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              width: 300,
              child: Form(
                key: _formKey,
                child: Center(
                  child: TextFormField(
                    onFieldSubmitted: (value) {
                      if (_formKey.currentState!.validate()) {
                        goback();
                      }
                    },
                    maxLength: 12,
                    controller: roll_id,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Roll.No';
                      }

                      return null;
                    },
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 28),
                      prefixIcon: Icon(Icons.person_search_outlined,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                      ),
                      hintText: "Enter Your Roll.No",
                      fillColor: Colors.white,
                      filled: true,
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void goback() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => desktopview(
                  context,
                  id: roll_id.text.toUpperCase(),
                )));
  }
}
