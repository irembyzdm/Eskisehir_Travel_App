import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter_application_1/pages/forgot_pw_page.dart';


class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseFirestore = FirebaseFirestore.instance;

  @override
  void dispose() {
    _emailController.dispose();
  }
  

  Future forgotPassword() async {
    try {
      await firebaseAuth
        .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Şifre sıfırlama maili gönderildi."),
          );
        },
      );
    } on FirebaseAuthException catch(e) {
      print(e);
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
      }
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF231955),
        elevation: 0,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Email adresinizi giriniz. Size şifre sıfırlama maili göndereceğiz.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),

        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: 'Email',
              fillColor: Colors.grey[200],
              filled: true,
            ),
          )
        ),
        SizedBox(height: 10),


        MaterialButton(
          onPressed: forgotPassword,
          child: Text('Şifre Sıfırla'),
          color: Colors.deepPurple[200],
        ),
      ],
    )
    );
  }
} 