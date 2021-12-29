import 'package:flutter/material.dart';
import 'package:mobile/config/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static String routeName = '/register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                "Hey there",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Register here",
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
                  Navigator.pop(context);
                },
                child: Row(
                  children: const [
                    Text(
                      "Have an account? Click to ",
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
                decoration: GetTextFieldDecoration('Name'),
              ),
              const SizedBox(
                height: 24.0,
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
                    'Sign up',
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
                height: 30.0,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
