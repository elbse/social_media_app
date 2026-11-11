import 'package:flutter/material.dart';
import 'package:social_media_app/model/userdata.dart';
import 'package:social_media_app/views/friendlist.dart';
import 'package:social_media_app/views/infoheader.dart';
import 'package:social_media_app/views/mainheader.dart';
import 'package:social_media_app/views/postlist.dart';

class Socialmedia extends StatefulWidget {
  const new({super.key});

  @override
  State<Socialmedia> createState() => _SocialmediaState();
}

class _SocialmediaState extends State<Socialmedia> {
  Userdata userdata = Userdata();

  var followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vynk'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Mainheader(userdata: userdata),
          Infoheader(userdata: userdata),
          FriendList(userdata: userdata),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(children: [Text('Posts', style: followTxtStyle)]),
          ),
          const SizedBox(height: 20),
          PostList(userdata: userdata),
        ],
      ),
    );
  }
}