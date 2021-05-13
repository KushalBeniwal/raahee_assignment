import 'package:flutter/material.dart';
import 'package:raahee_assignment/pages/UselessPage.dart';

import 'UselessPage.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.white,
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Text("Profile", style: TextStyle(fontSize: 30)),
      ),
      Container(
        padding: EdgeInsets.only(top: 70, bottom: 20),
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("imgs/avatar.png"),
                  )),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text("Alice", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 300),
        child: Column(
          children: [
            ListTile(
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.grey[200],
                  child: Container(
                    padding: EdgeInsets.all(6),
                    child: Icon(Icons.assignment_outlined, color: Colors.green),
                  ),
                ),
                title: Text("My appointments", style: TextStyle(fontSize: 20)),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UselessPage()),
                    );
                  },
                  child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey[700]),
                )),
            ListTile(
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.grey[200],
                  child: Container(
                    padding: EdgeInsets.all(6),
                    child: Icon(Icons.person_outline, color: Colors.green),
                  ),
                ),
                title: Text("Personal details", style: TextStyle(fontSize: 20)),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UselessPage()),
                    );
                  },
                  child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey[700]),
                )),
            ListTile(
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.grey[200],
                  child: Container(
                    padding: EdgeInsets.all(6),
                    child: Icon(Icons.rate_review_outlined, color: Colors.green),
                  ),
                ),
                title: Text("Reviews", style: TextStyle(fontSize: 20)),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UselessPage()),
                    );
                  },
                  child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey[700]),
                )),
            ListTile(
                leading: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.grey[200],
                  child: Container(
                    padding: EdgeInsets.all(6),
                    child: Icon(Icons.settings_outlined, color: Colors.green),
                  ),
                ),
                title: Text("Settings", style: TextStyle(fontSize: 20)),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UselessPage()),
                    );
                  },
                  child: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey[700]),
                )),
          ],
        ),
      )
    ]);
  }
}
