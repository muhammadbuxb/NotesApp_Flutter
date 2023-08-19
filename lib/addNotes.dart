import 'package:flutter/material.dart';
import 'package:notes/main.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
        },
        child: CircleAvatar(
          radius: 180,
          backgroundColor: Color.fromARGB(255, 255, 224, 158),
          child: Icon(Icons.arrow_back, color: Colors.black,),
        ),
      )
    );
  }
}
