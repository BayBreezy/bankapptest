import 'package:flutter/material.dart';
import 'package:mobile/config/constants.dart';
import 'package:mobile/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120.0,
              ),
              const Text(
                "Welcome back",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Login here",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32.0,
                    color: kPrimaryColor),
              ),
              const SizedBox(
                height: 40.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterPage.routeName);
                },
                child: Row(
                  children: const [
                    Text(
                      "New here? Click to ",
                    ),
                    Text(
                      "Register",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: GetTextFieldDecoration('Email'),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextField(
                obscureText: true,
                decoration: GetTextFieldDecoration('Password'),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0,
                    ),
                  ),
                  Ink(
                    height: 80.0,
                    width: 80.0,
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          offset: Offset.fromDirection(90.0),
                        )
                      ],
                      shape: CircleBorder(),
                      color: kPrimaryColor,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                "Forgot password?",
                style: TextStyle(color: kPrimaryColor),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
