import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Lab_5",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void showToast() {
    Fluttertoast.showToast(
      msg: 'Hellooo!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.yellow,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: AppBar(
          title: Text("Menu"),
          backgroundColor: Colors.green[600],
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "ListView"),
              Tab(text: "GridView"),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[

              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                accountName: Text("Madina Azykeyeva"),
                accountEmail: Text("yourgmail.com"),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("О себе"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("О себе")),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Настройки"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Настройки")),
                  );
                },
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: <Widget>[

            // -------- LISTVIEW --------
            ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text("Map"),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text("Album"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                ),
                ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text("Contact"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
              ],
            ),

            // -------- GRIDVIEW --------
            Center(
              child: GridView.extent(
                primary: false,
                padding: EdgeInsets.all(16),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 200.0,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.yellow,
                    child: Center(
                      child: Text("First",
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.blue,
                    child: Center(
                      child: Text("Second",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.green,
                    child: Center(
                      child: Text("Third",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.orange,
                    child: Center(
                      child: Text("Fourth",
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.purple,
                    child: Center(
                      child: Text("Fifth",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: showToast,
          child: Icon(Icons.notifications),
        ),
      ),
    );
  }
}
