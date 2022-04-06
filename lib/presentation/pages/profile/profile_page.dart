import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile_page extends StatefulWidget {
  @override
  _profile_pageState createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  

  @override
  Widget build(BuildContext context) {
    final  top = coverHeight - profileHeight /2 ;
    return Scaffold(
      appBar: AppBar(
        title: Text("your profile"),
      ),
      body: ListView(
        // padding: EdgeInset.zero,
          children: [
            buildTop(),
            buildContent(),
          ]
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight /2; 
      final top = coverHeight - profileHeight /2 ;

    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          Positioned(
            top: top,
            child: buildProfileImage(),
          )
        ]
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

  //アイコン画像
  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.white,
    backgroundImage: NetworkImage(
      'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',
    )
  );
}

Widget buildContent() => Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        'テック　ユニ太',
        style: TextStyle(fontSize: 35)
      ),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialIcon(FontAwesomeIcons.slack),
          const SizedBox(width: 12),
          buildSocialIcon(FontAwesomeIcons.github),
          const SizedBox(width: 12),
          buildSocialIcon(FontAwesomeIcons.twitter),
          const SizedBox(width: 12),
          buildSocialIcon(FontAwesomeIcons.instagram),
          const SizedBox(width: 12),
          buildSocialIcon(FontAwesomeIcons.discord),
          const SizedBox(width: 12),
        ]
      ),
      Text(
        '国際信州学院大学　法学部',
        style: TextStyle(fontSize: 20)
      ),
      Text(
        '２年',
        style: TextStyle(fontSize: 20)
      ),
      Text(
        'Python,Java,React',
        style: TextStyle(fontSize: 20)
      ),
      Text(
        'よろしくお願いします！',
        style: TextStyle(fontSize: 20)
      )
    ]
  )
);

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
  radius: 25,
  child: Material(
    shape: CircleBorder(),
    clipBehavior: Clip.hardEdge,
    color: Colors.transparent,
      child: InkWell(
        onTap: () {},
          child: Center(child: Icon(icon, size: 32)),
      )
  ),
);

