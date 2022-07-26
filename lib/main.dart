import 'package:flutter/material.dart';
import 'tabBarPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red,
            foregroundColor: textColor,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.book,
                    color: textColor,
                  ),
                  child: Text(
                    "To Do",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                    icon: Icon(
                      Icons.check,
                      color: textColor,
                    ),
                    child: Text("Completed",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            title: const Center(
              child: Text(
                'Bearcat Tracker',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //TODO: ADD DRAWER HERE
          body: const TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              ToDoTab(),
              CompletedTab(),
            ],
          ),
        ),
      ),
    );
  }
}
