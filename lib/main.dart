import 'package:flutter/material.dart';
import 'package:flutter_cal/calendar.dart';

import 'Notes/notes_page.dart';

ThemeData light = ThemeData(
  primaryColor: Color.fromRGBO(246, 248, 250, 1.0),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Color.fromRGBO(
      50,
      50,
      50,
      1,
    ),
  ),
);
void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Book"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.calendar_today), text: "Appointment"),
              Tab(icon: Icon(Icons.notes), text: "notes"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Calendar(),
            NotesPage(),
            // NotesPage(),
          ],
        ),
      ),
    );
  }
}
