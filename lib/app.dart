import 'package:class_work_1/pages/student_details.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentDetails(),
      );
  }
}