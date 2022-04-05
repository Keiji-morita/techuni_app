import 'package:flutter/material.dart';

class profile_page extends StatefulWidget {
  @override
  _profile_pageState createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  final double coverHeight = 280;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your profile"),
      ),
      body: buildCoverImage(),
    );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.network(
      'https://pbs.twimg.com/media/E_Pkd-nUYAAohkI?format=png&name=large',
    width: double.infinity,
    height: coverHeight,
    fit: BoxFit.cover,
    ),
  );
}