import 'package:flutter/material.dart';
import 'package:notelist/Screen/note_detail.dart';
import 'package:notelist/Screen/note_list.dart';

void main()
{
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteKeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: NoteList(),
    );
  }
}