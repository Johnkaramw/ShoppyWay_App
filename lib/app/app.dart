import 'package:flutter/material.dart';

class myapp extends StatefulWidget {
  myapp._internal();
  static final myapp _instance = myapp._internal();
  factory myapp() => _instance;
  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
