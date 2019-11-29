import 'package:flutter/material.dart';
import 'package:gespam_agua/Login/paginaLogin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PaginaLogin(),
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}