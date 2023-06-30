import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/authentication/login.dart';

class ProviderState extends ChangeNotifier {
  late String Uid, Email;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> CreateUserAccount(String email, String Password) async {
    bool success = false;
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: Password);
      if (userCredential != null) {
        Uid = userCredential.user!.uid;
        Email = userCredential.user!.email!;
        return success = true;
      }
      // ignore: non_constant_identifier_names
    } catch (e) {}
    return success;
  }
}

Future showdialog(BuildContext context, String message) async {
  return showDialog(
      builder: (context) => AlertDialog(
            title: Text(
              message,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            actions: [
              MaterialButton(
                  color: Colors.white,
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()))
                      },
                  child: const Text("OK",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 15,
                      )))
            ],
          ),
      context: context);
}
