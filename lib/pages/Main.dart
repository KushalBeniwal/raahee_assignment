import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final List<Widget> _allServices = <Widget>[
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Icon(
                Icons.medical_services_outlined,
                size: 50,
                color: Colors.green,
              )),
          Container(
              padding: EdgeInsets.only(top: 15), child: Text("Consultation"))
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Icon(
                Icons.local_hospital_outlined,
                size: 50,
                color: Colors.green,
              )),
          Container(padding: EdgeInsets.only(top: 15), child: Text("Pediatry"))
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Icon(
                Icons.calendar_today_outlined,
                size: 50,
                color: Colors.green,
              )),
          Container(padding: EdgeInsets.only(top: 15), child: Text("Dentistry"))
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Icon(
                Icons.assignment_outlined,
                size: 50,
                color: Colors.green,
              )),
          Container(
              padding: EdgeInsets.only(top: 15), child: Text("Diagnostic"))
        ],
      ),
    ),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Icon(
                Icons.question_answer_outlined,
                size: 50,
                color: Colors.green,
              )),
          Container(
              padding: EdgeInsets.only(top: 15), child: Text("what else?"))
        ],
      ),
    ),
  ];

  List<Widget> _ads = <Widget>[
    Card(
      color: Colors.grey[100],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("25%",
                        style: TextStyle(color: Colors.green, fontSize: 27)),
                    Text("discount", style: TextStyle(fontSize: 18)),
                  ],
                ),
                Text("on visit to an", style: TextStyle(fontSize: 18)),
                Text("opthalmologist", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 15, right: 15),
            child: Image.asset("imgs/green_doc.png"),
          )
        ],
      ),
    ),
    Card(
      color: Colors.grey[100],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("25%",
                        style: TextStyle(color: Colors.green, fontSize: 27)),
                    Text("discount", style: TextStyle(fontSize: 18)),
                  ],
                ),
                Text("on visit to an", style: TextStyle(fontSize: 18)),
                Text("opthalmologist", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 15, right: 15),
            child: Image.asset("imgs/green_doc.png"),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          buildFloatingSearchBar(),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("Hello Alice!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
          ),
          Container(
            padding: EdgeInsets.only(top: 140, left: 10, right: 10),
            child: Text("Upcoming appointment",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          ),
          Container(
            padding: EdgeInsets.only(top: 180, left: 10, right: 10),
            child: Card(
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.green,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 15, bottom: 15),
                    height: 100,
                    width: 75,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Image.asset("imgs/doc.png"),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Container(
                    height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 7, left: 15)),
                        Text("Dr. Jane Smith",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )),
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Text("Therapist",
                            style: TextStyle(color: Colors.white)),
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Row(
                          children: [
                            Icon(Icons.calendar_today,
                                color: Colors.white, size: 20),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("April 28",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Padding(padding: EdgeInsets.only(left: 18)),
                            Icon(Icons.access_time,
                                color: Colors.white, size: 20),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text("09:30",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 7))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 320, left: 10, right: 10),
            child: Text("How can we help you?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          ),
          Container(
              padding:
                  EdgeInsets.only(top: 350, left: 10, right: 10, bottom: 150),
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: _allServices,
              )),
          Container(
              padding:
                  EdgeInsets.only(top: 490, left: 10, right: 10, bottom: 10),
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: _ads,
              )),
        ],
      ),
    );
  }

  Widget buildFloatingSearchBar() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      backdropColor: Colors.white,
      backgroundColor: Colors.grey[100],
      margins: EdgeInsets.only(top: 70, left: 10, right: 10),
      hint: 'Search doctor here',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      height: 40,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {},
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.mic),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
            ),
          ),
        );
      },
    );
  }
}
