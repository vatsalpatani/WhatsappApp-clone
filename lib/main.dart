// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_app/whatsapp_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: const Color(0xff075E54),
        // colorScheme: ColorScheme.fromSwatch()
        //     .copyWith(secondary: const Color(0xff25D366)),
        accentColor: const Color(0xff25D366),
      ),
      home: const WhatsAppHome(),
    );
  }
}
