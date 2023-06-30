import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/Responsive/responsive_admin.dart';

import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool _obscureText = true;

  Future showdialog(BuildContext context, String message) async {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title:
            const Text("Alert", style: TextStyle(fontWeight: FontWeight.bold)),
        content: Text(message),
        actions: <Widget>[
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.of(ctx).pop();
              _email.clear();
              _password.clear();
            },
            child: const Text(
              "OK",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  String email = "", password = "";
  void signin(BuildContext context) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .catchError((onError) {
      showdialog(context, "Invalid login details");
    }).then((value) {
      if (value.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const desktop()));
      }
    });
  }

  var image;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(
          image: NetworkImage(
              'https://th.bing.com/th/id/R.a3d88e30cd966d4c4d1eb2beb3556665?rik=Y0xoysPBVKZ7FQ&riu=http%3a%2f%2fcdn.wallpapersafari.com%2f87%2f76%2fOlkURI.jpg&ehk=78htUTjZk8bZNnxmkuXCEGVTftwToPrYq6yuIIFD8ck%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
        ),
        Center(
            child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 2)],
                borderRadius: BorderRadius.circular(10),
              ),
              height: 450,
              width: 400,
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    // Row(
                    //   children: [
                    Center(
                        child: Text(
                      "Login",
                      style: GoogleFonts.alice(
                          fontSize: 30, color: Color.fromARGB(255, 94, 0, 63)),
                    )),
                    SizedBox(height: 30),

                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: TextFormField(
                        cursorColor: Color.fromARGB(255, 189, 189, 189),
                        keyboardType: TextInputType.emailAddress,
                        controller: _email,
                        onChanged: ((newVal) {
                          email = newVal;
                        }),
                        decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  const BorderSide(color: Colors.red, width: 1),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 191, 191, 191),
                                  width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 47, 1, 73),
                                    width: 1)),
                            suffixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.red,
                            ),
                            label: Text(
                              "Email:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            )),
                        validator: (email) {
                          if (email!.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(email)) {
                            return "Enter valid email";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: TextFormField(
                          cursorColor: Color.fromARGB(255, 189, 189, 189),
                          controller: _password,
                          onChanged: (newValue) {
                            password = newValue;
                          },
                          validator: (pass) {
                            if (pass!.isEmpty) {
                              return 'Please enter your password';
                            } else if (pass.length < 8) {
                              return "Password strength is low";
                            } else {
                              return null;
                            }
                          },
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 1),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 191, 191, 191),
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 47, 1, 73),
                                      width: 1)),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Color.fromARGB(255, 1, 17, 110),
                                ),
                                onPressed: _toggle,
                              ),
                              label: Text(
                                "Password:",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 30, top: 30),
                          child: InkWell(
                            child: Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 0)),
                            ),
                            onTap: () {
                              fp(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 36),
                    SizedBox(
                      width: 300,
                      height: 36,
                      child: MaterialButton(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                            signin(context);
                          } else {
                            return;
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        color: Color.fromARGB(255, 2, 11, 151),
                      ),
                    ),
                  ],
                ),
              )),
        ))
      ]),
    );
  }

  void fp(BuildContext context) async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: _email.text)
        .then((value) =>
            showdialog(context, "Reset link is send on your registered email"))
        .catchError((onError) {
      showdialog(context, "Please entered your registered email");
    });
  }
}
