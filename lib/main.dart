import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/config/constants.dart';
import 'package:mobile/pages/login_page.dart';
import 'package:mobile/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (ctx) => const LoginPage(),
        RegisterPage.routeName: (ctx) => const RegisterPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primarySwatch: Colors.pink,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      home: const LoginPage(),
    );
  }
}
