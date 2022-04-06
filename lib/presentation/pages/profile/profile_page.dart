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
    backgroundColor: Colors.grey.shade800,
    // backgroundImage: NetworkImage(
    //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fdailyportalz.jp%2Fkiji%2F140910165126&psig=AOvVaw35XrgXuIylxbwPSMEa4mrG&ust=1649252422423000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCLDwz5iG_fYCFQAAAAAdAAAAABAa',
    // )
  );
}

Widget buildContent() => Container(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        'テック　ユニ太',
        style: TextStyle(fontSize: 35)
      ),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.github),
          const SizedBox(width: 12),
        ]
      ),
      Text(
        '関西学院大学　医学部',
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

//   Widget buildSocialIcon(IconData icon) => CircleAvatar(
//   radius: 25,
//   child: Center(child: Icon(icon, size: 32)),
// );

