import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list_app/to_do.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        title: 'Flutter To_Do',
        debugShowCheckedModeBanner: debugDisableShadows,
        home: const to_do());
  }
}
