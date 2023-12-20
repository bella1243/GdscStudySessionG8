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
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFEE6F57),
            ),
            onPressed: () {
              // Add your back button functionality here
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'To-Do List',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/stick todo.png', // Replace with your local image path
                width: 236,
                height: 242,
              ),
              SizedBox(height: 16),
              Text(
                'Tasks List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              buildTaskItem('U', 'UI/UX App Design', Color(0xFFFD7778)),
              buildTaskItem('U', 'UI/UX App Design', Color(0xFF43DB41)),
              buildTaskItem('V', 'View Candudates', Color(0xFFF9C44C)),
              buildTaskItem('F', 'Football CuDrybling', Color(0xFFFD5C5D)),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add your create task button functionality here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16), // Adjust the padding
                ),
                child: Text('Create Task', style: TextStyle(fontSize: 18)), // Adjust the font size
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTaskItem(String icon, String text, Color color) {
    DateTime now = DateTime.now();
    String formattedDate = "${now.day}/${now.month}/${now.year}";

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(8), // Adjust the padding to make the box smaller
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        border: Border(
          right: BorderSide(
            color: color,
            width: 3, // Adjust the width of the color line
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formattedDate,
                style: TextStyle(
                  fontSize: 10, // Adjust the font size
                  color: Colors.grey,
                ),
              ),
              Text(
                now.year.toString(),
                style: TextStyle(
                  fontSize: 10, // Adjust the font size
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 4), // Adjust the spacing
          Row(
            children: [
              Text(
                icon,
                style: TextStyle(
                  fontSize: 20, // Adjust the font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4), // Adjust the spacing
              Text(
                text,
                style: TextStyle(
                  fontSize: 12, // Adjust the font size
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
