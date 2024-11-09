// ignore_for_file: non_constant_identifier_names, must_be_immutable

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
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  MySnackbar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  ButtonStyle buttonStyle =
      ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 60));

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Delete!"),
            content: Text("Are you sure?"),
            actions: [
              TextButton(
                  onPressed: () {
                    MySnackbar("Successfully Deleted", context);
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No"))
            ],
          ));
        });
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
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            );
          }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Icon(Icons.add),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          backgroundColor: Colors.amber,
          onDestinationSelected: (int selectedIndex) {},
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: "home",
            ),
            NavigationDestination(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                label: "Settings"),
            NavigationDestination(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                label: "Search"),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.lightBlue.shade100),
                  accountName: Text("Ichigo Kurosaki"),
                  accountEmail: Text("Ichigo07@gmail.com"),
                  currentAccountPicture: Image.network(
                    'https://upload.wikimedia.org/wikipedia/en/1/1e/IchigoKurosakiBleach.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () => MySnackbar("Home", context),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () => MySnackbar("Settings", context),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("email"),
                onTap: () => MySnackbar("Phone", context),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: () => MySnackbar("Phone", context),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "First Name",
                      hintText: "first name",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Last Name",
                      hintText: "last name",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "email",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
                style: buttonStyle,
              )
            ],
          ),
        ));
  }
}
