// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      themeMode: ThemeMode
          .system, // Toggles between light and dark theme based on system settings
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackbar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App Bar'),
          backgroundColor: Colors.amber,
          centerTitle: true,
          toolbarHeight: 50,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          actions: [
            IconButton(
                onPressed: () {
                  MySnackbar("Search", context);
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  MySnackbar("Email", context);
                },
                icon: const Icon(Icons.email)),
            IconButton(
                onPressed: () {
                  MySnackbar("Comment", context);
                },
                icon: const Icon(Icons.comment)),
            IconButton(
                onPressed: () {
                  MySnackbar("Settings", context);
                },
                icon: const Icon(Icons.settings)),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ));
  }
}
