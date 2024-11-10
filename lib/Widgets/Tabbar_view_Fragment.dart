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
      themeMode: ThemeMode.system,
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
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Appbar"),
            backgroundColor: Colors.lightBlueAccent,
            bottom: const TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: "person",
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: "Settings",
                  ),
                  Tab(
                    icon: Icon(Icons.contacts),
                    text: "Contacts",
                  ),
                  Tab(
                    icon: Icon(Icons.email),
                    text: "Email",
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                    text: "Search",
                  ),
                  Tab(
                    icon: Icon(Icons.balance),
                    text: "Balance",
                  ),
                ]),
          ),
        ));
  }
}
