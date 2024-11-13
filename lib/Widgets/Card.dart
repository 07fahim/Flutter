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
      initialRoute: "/homeactivity",
      routes: {
        '/homeactivity': (context) => const HomeActivity(),
        //'/activity1': (context) => const Activity1(),
        //'/activity2': (context) => const Activity2(),
      },
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
        body: Center(
          child: Card(
            color: Colors.redAccent,
            elevation: 40,
            shadowColor: Colors.redAccent,
            child: SizedBox(
              height: 300,
              width: 300,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
