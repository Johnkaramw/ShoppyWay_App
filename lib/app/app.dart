import 'package:flutter/material.dart';
import 'package:mvvm/presentation/resuorces/themmanager.dart';

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
    return MaterialApp(theme: GetThemApp());
  }
}
