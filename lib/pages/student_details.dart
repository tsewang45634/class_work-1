
import 'package:flutter/material.dart';
import 'package:class_work_1/pages/output.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  final formKey = GlobalKey<FormState>();

  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  String gender = "Male";
  String department = "IT";

  // Validate input fields
  String? validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  @override
  void dispose() {
    fnameController.dispose();
    lnameController.dispose();
    super.dispose();
  }

  // Display student information
  void showDetails() {
    if (!formKey.currentState!.validate()) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OutputPage(
          firstName: fnameController.text,
          lastName: lnameController.text,
          gender: gender,
          department: department,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details Form"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // First name
              TextFormField(
                controller: fnameController,
                decoration: const InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(),
                ),
                validator: validateInput,
              ),

              const SizedBox(height: 15),

              // Last name
              TextFormField(
                controller: lnameController,
                decoration: const InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder(),
                ),
                validator: validateInput,
              ),

              const SizedBox(height: 15),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Male option
              RadioListTile<String>(
                title: const Text("Male"),
                value: "Male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),

              // Female option
              RadioListTile<String>(
                title: const Text("Female"),
                value: "Female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),

              const SizedBox(height: 15),

              // Department dropdown
              DropdownButtonFormField<String>(
                value: department,
                decoration: const InputDecoration(
                  labelText: "Department",
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(
                    value: "IT",
                    child: Text("IT"),
                  ),
                  DropdownMenuItem(
                    value: "Sales",
                    child: Text("Sales"),
                  ),
                  DropdownMenuItem(
                    value: "Finance",
                    child: Text("Finance"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    department = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              // Display button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: showDetails,
                  child: const Text("Display Details"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
