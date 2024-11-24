import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController id = TextEditingController();
    TextEditingController semester = TextEditingController();
    TextEditingController dept = TextEditingController();
    TextEditingController city = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
        centerTitle: true,
      ), // AppBar
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ), // OutlineInputBorder
              ), // InputDecoration
            ), // TextField
            const SizedBox(height: 10),
            TextField(
              controller: id,
              decoration: InputDecoration(
                labelText: "Enter your ID",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ), // OutlineInputBorder
              ), // InputDecoration
            ), // TextField
            const SizedBox(height: 10),
            TextField(
              controller: semester,
              decoration: InputDecoration(
                labelText: "Enter your Semester",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ), // OutlineInputBorder
              ), // InputDecoration
            ), // TextField
            const SizedBox(height: 10),
            TextField(
              controller: dept,
              decoration: InputDecoration(
                labelText: "Enter your Department",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ), // OutlineInputBorder
              ), // InputDecoration
            ), // TextField
            const SizedBox(height: 10),
            TextField(
              controller: city,
              decoration: InputDecoration(
                labelText: "Enter your City",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ), // OutlineInputBorder
              ), // InputDecoration
            ), // TextField
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextScreen(
                      name: name.text,
                      id: id.text,
                      semester: semester.text,
                      dept: dept.text,
                      city: city.text,
                    ),
                  ),
                );
              },
              child: const Text("Continue"),
            ), // ElevatedButton
          ],
        ), // Column
      ), // Padding
    ); // Scaffold
  }
}

class NextScreen extends StatelessWidget {
  final String name;
  final String id;
  final String semester;
  final String dept;
  final String city;

  const NextScreen({
    Key? key,
    required this.name,
    required this.id,
    required this.semester,
    required this.dept,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ), // AppBar
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: $name"),
            Text("ID: $id"),
            Text("Semester: $semester"),
            Text("Department: $dept"),
            Text("City: $city"),
          ],
        ), // Column
      ), // Padding
    ); // Scaffold
  }
}
