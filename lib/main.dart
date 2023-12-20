import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color:Color(0xFFEC715B),
            ),
            onPressed: () {
              // Handle back button press
            },
          ),
          title: Text("Create a new task"),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Color(0xFFEE6F57),
              ),
              onPressed: () {
                // Handle dropdown menu press
              },
            ),
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Main task name",
                  style: TextStyle(
                    color: Color(0xFFEF7F75),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 400, // Set a constant width for the box
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    "UI/UX App Design",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Due date",
                  style: TextStyle(
                    color: Color(0xFFEF6F62),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 400, // Set a constant width for the box
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "April 29, 2023 12:30 AM",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: Color(0xFFFAA196),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Description",
                  style: TextStyle(
                    color: Color(0xFFFBA49A),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 400, // Set a constant width for the box
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    "First I have to animate the logo and later prototype my design. It's very important.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Handle add task button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary:Color(0xFFEC6E57),
                    elevation: 9.0,
                    shadowColor: Colors.grey,
                  ),
                  child: Text("Add Task"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
