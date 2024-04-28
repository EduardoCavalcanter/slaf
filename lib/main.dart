import 'package:flutter/material.dart';
import 'login.dart';
import 'cadastro.dart';
import 'esqueciasenha.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => login(),
      '/segunda': (context) => cadastro(),
      '/terceira': (context) => esqueciasenha(),
    },
  ));
}
