import 'package:flutter/material.dart';
import 'package:techuni_app/presentation/pages/profile/profile_page.dart';

class button extends StatefulWidget {
  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
            body: Center(
        child: ElevatedButton(
    child: const Text('プロフィールへ'),
    style: ElevatedButton.styleFrom(
    primary: Colors.orange,
    onPrimary: Colors.white,
  ),
  onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => profile_page()),
            );
  },
),
      ),
    );
  }
}
