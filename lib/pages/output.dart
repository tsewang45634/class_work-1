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
        title: const Text("Student Details"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 80,
              color: Colors.blue,
            ),

            const SizedBox(height: 20),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text("Name: $firstName $lastName"),
                    const Divider(),
                    Text("Gender: $gender"),
                    const Divider(),
                    Text("Department: $department"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}