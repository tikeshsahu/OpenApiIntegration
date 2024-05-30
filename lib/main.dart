import 'package:flutter/material.dart';
import 'package:project/dependency.dart';
import 'package:project/presentation/app.dart';

void main() async{
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
