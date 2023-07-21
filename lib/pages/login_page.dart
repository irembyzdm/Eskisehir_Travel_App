import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/activities_screen.dart';
import 'package:flutter_application_1/service/auth_service.dart';
import 'package:flutter_application_1/utils/customColors.dart';
import 'package:flutter_application_1/utils/customTextStyle.dart';
import 'package:flutter_application_1/widgets/custom_text_button.dart';
import 'package:flutter_application_1/pages/sign_up.dart';

import 'forgot_pw_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
   static const routeName = '/LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email, password;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  final authService = AuthService();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    String topImage = "assets/images/topImage.png";
    return Scaffold(
      backgroundColor: Color(0xff21254A),
      body: appBody(height, topImage),
    );
  }

  SingleChildScrollView appBody(double height, String topImage) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topImageContainer(height, topImage),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    titleText(),
                    customSizedBox(),
                    emailTextField(),
                    customSizedBox(),
                    passwordTextField(),
                    customSizedBox(),
                    forgotPasswordButton(),
                    customSizedBox(),
                    signInButton(),
                    customSizedBox(),
                    CustomTextButton(
                      onPressed: () => Navigator.pushNamed(context, "/SignUp"),
                      buttonText: "Hesap Oluştur",
                    ),
                    CustomTextButton(
                        onPressed: () async {
                          final result = await authService.signInAnonymous();
                          if (result != null) {
                            Navigator.pushReplacementNamed(
                                context, "/activities");
                          } else {
                            print("Hata ile karşılaşıldı.");
                          }
                        },
                        buttonText: "Misafir Girişi")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Text titleText() {
    return Text(
      "Merhaba, \nHoşgeldin",
      style: CustomTextStyle.titleTextStyle,
    );
  }

  TextFormField emailTextField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Bilgileri Eksiksiz Doldurunuz.";
        } else {}
      },
      onSaved: (value) {
        email = value!;
      },
      style: TextStyle(color: Colors.white),
      decoration: customInputDecoration("Email"),
    );
  }

  TextFormField passwordTextField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Bilgileri Eksiksiz Doldurunuz.";
        } else {}
      },
      onSaved: (value) {
        password = value!;
      },
      obscureText: true,
      style: TextStyle(color: Colors.white),
      decoration: customInputDecoration("Şifre"),
    );
  }

  Center forgotPasswordButton() {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ForgotPasswordPage();
              }
            ),
          );
        },
        child: customText(
          "Şifremi Unuttum",
          CustomColors.textButtonColor,
        ),
      ),
    );
  }

  Center signInButton() {
    return Center(
      child: TextButton(
        onPressed: signIn,
        child: Container(
          height: 50,
          width: 150,
          margin: EdgeInsets.symmetric(horizontal: 60),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff31274F)),
          child: Center(
            child: customText("Giriş Yap", CustomColors.loginButtonTextColor),
          ),
        ),
      ),
    );
  }

  void signIn() async {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      final result = await authService.signIn(email, password);
      if (result == "success") {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => ActivitiesScreen()),
            (route) => false);
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Hata"),
                content: Text(result!),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Geri Dön"))
                ],
              );
            });
      }
    }
  }

  Center signUpButton() {
    return Center(
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, "/SignUp"),
        child: customText(
          "Hesap Oluştur",
          CustomColors.textButtonColor,
        ),
      ),
    );
  }

  Container topImageContainer(double height, String topImage) {
    return Container(
      height: height * .25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(topImage),
        ),
      ),
    );
  }

  Widget customSizedBox() => SizedBox(
        height: 20,
      );

  Widget customText(String text, Color color) => Text(
        text,
        style: TextStyle(color: color),
      );

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }
}