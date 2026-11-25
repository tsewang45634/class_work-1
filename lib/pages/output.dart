import 'package:flutter/material.dart';


class OutputPage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String gender;
  final String department;


  const OutputPage({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("output page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("First Name: $firstName", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text("Last Name: $lastName", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text("Gender: $gender", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text("Department: $department", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}