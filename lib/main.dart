import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes/TaskList.dart';
import 'package:notes/addNotes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void main() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          CircleAvatar(
              backgroundColor: Colors.white12,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: 250,
                  child: Text(
                    'My Notes',
                    style: TextStyle(
                        fontSize: 55,
                        color: Colors.white,
                        fontFamily: 'lufga',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(vertical: 10),
                children: [
                  CategoryList(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "All",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white70,
                              fontFamily: 'lufga',
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            "23",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white60),
                          ),
                        )
                      ],
                    ),
                  ),
                  CategoryList(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                        Text(
                          "Important",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white24,
                              fontFamily: 'lufga',
                              fontWeight: FontWeight.normal),
                        ),
                      ])),
                  CategoryList(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                        Text(
                          "To-Do",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white24,
                              fontFamily: 'lufga',
                              fontWeight: FontWeight.normal),
                        ),
                      ])),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: PlanContainer(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ImageNotes(),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(5),
              height: 120,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 224, 158),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 30,
                      child: Image.asset("assets/ThinkingEmoji.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 17),
                      child: Column(
                        children: [
                          Text(
                            "5 Docs",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                                fontFamily: 'lufga',
                                fontWeight: FontWeight.w100),
                          ),
                          Text(
                            "My Lectures",
                            style: TextStyle(
                              fontSize: 27,
                              fontFamily: 'lufga',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 30,
                        child: Icon(Icons.favorite_outline_outlined,
                            color: Colors.black38)),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: PlanContainer(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ImageNotes(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ActionButton(),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddNotes()),
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          // Add spacing between the FABs
          FloatingActionButton(
            backgroundColor: Colors.white.withOpacity(0.4),
            onPressed: () {
              // Handle second FAB press
            },
            child: Icon(
              Icons.mic_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

// All Extracted Classes are bellow

class PlanContainer extends StatefulWidget {
  const PlanContainer({
    super.key,
  });

  @override
  State<PlanContainer> createState() => _PlanContainerState();
}

class _PlanContainerState extends State<PlanContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 166, 107),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(5, 30, 2, 5),
            child: Row(
              children: [
                Container(
                  width: 90,
                  child: Text(
                    "Plan for The Day",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'lufga',
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white30,
                  radius: 25,
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.black38,
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(ListTask.length, (index) {
                    if (ListTask[index].status == "complete") {
                      return CompletePlan(
                        text: ListTask[index].title,
                      );
                    } else {
                      return InkWell(
                        onLongPress: () {
                          setState(() {
                            ListTask[index].status = 'complete';
                          });
                        },
                        child: InCompletePlan(
                          text: ListTask[index].title,
                        ),
                      );
                    }
                  }))),
        ],
      ),
    );
  }
}

class ImageNotes extends StatelessWidget {
  const ImageNotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 208, 107),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(2, 30, 2, 5),
            child: Row(
              children: [
                Container(
                  width: 90,
                  child: Text(
                    "Image Notes",
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'lufga',
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white30,
                  radius: 25,
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.black38,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white60, width: 3, strokeAlign: 4),
            borderRadius: BorderRadius.circular(18)),
        child: child);
  }
}

class CompletePlan extends StatelessWidget {
  const CompletePlan({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(color: Colors.black26, width: 1, strokeAlign: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black26,
            radius: 15,
            child: Icon(Icons.check_rounded,
                color: Color.fromARGB(255, 255, 166, 107)),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: TextDecoration.lineThrough, // Line through the text
              decorationColor: Colors.black26, // Line color
              decorationThickness: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}

class InCompletePlan extends StatelessWidget {
  const InCompletePlan({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(color: Colors.black26, width: 1, strokeAlign: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: Colors.black26,
              radius: 15,
              child: Icon(Icons.circle_rounded, color: Colors.black12)),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
