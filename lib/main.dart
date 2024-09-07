import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoices/view/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.notoSansOldSogdianTextTheme(),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
