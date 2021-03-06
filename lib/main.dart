import 'package:flutter/material.dart';
import 'package:gold/dio_helper.dart';
import 'package:gold/main_screen/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MainScreen(),
    );
  }
}

