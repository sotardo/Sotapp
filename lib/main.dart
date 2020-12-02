import 'package:sotapp/clases/shared_prefs.dart';
import 'package:sotapp/sotapp.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = SharedPrefs();
  await prefs.initPrefs();
  runApp(Sotapp());
}
