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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
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
      body: Container(
        height: 200,
        width: 300,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(color: Colors.black38, width: 4),
        ),
        child: Image.network(
            'https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/431733668_903395051796213_3429869177739163263_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=833d8c&_nc_ohc=L3AZOyMRj0gQ7kNvgFYA9YQ&_nc_zt=23&_nc_ht=scontent.fcgp3-1.fna&_nc_gid=A-WaFVK-KUZPG-_QY5R0w0P&oh=00_AYDh_ZOerfo1nWkCgZzqqHDULOBagXSgGtJ3XSjcNCqUeA&oe=67355050'),
      ),
    );
  }
}
