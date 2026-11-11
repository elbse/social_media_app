import 'package:flutter/material.dart';
import 'package:social_media_app/model/userdata.dart';
import 'package:social_media_app/model/userpost.dart';
import 'package:social_media_app/views/profileview.dart';

class PostList extends StatefulWidget {
  PostList({super.key, required this.userdata});

  final Userdata userdata;
  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  var nametxtStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  gotoPage(BuildContext context, dynamic page){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  Widget buttons(Userpost userPost) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextButton.icon(
        style: TextButton.styleFrom(
          foregroundColor: (userPost.isLiked) ? Colors.blue : Colors.grey,
        ),
        onPressed: (){
          setState((){
            userPost.isLiked = (userPost.isLiked) ? false : true;
          });
        },
        icon: const Icon(Icons.thumb_up),
        label: const Text('Like'),
      ),
      TextButton.icon(
        style: TextButton.styleFrom(foregroundColor: Colors.grey),
        onPressed: (){},
        icon: const Icon(Icons.message),
        label: const Text('Comment'),
      ),
      TextButton.icon(
        style: TextButton.styleFrom(foregroundColor: Colors.grey),
        onPressed: (){},
        icon: const Icon(Icons.share),
        label: const Text('Share'),
      ),
    ],
  );
  

  Widget postCount(Userpost userPost) => Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text('${userPost.numcomments} Comments'),
      const Text(' '),
      const SizedBox(width: 20),
      Text('${userPost.numshare} Shares'),
    ],
  );

  Widget postImage(Userpost userPost) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Container(
      height: 350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(userPost.postimg),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );

  Widget postHeader(Userpost userPost) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CircleAvatar(
          radius:20,
          backgroundImage: AssetImage(userPost.userimg),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(userPost.username, style: nametxtStyle),
          Row(
            children: [
              Text('${userPost.time} '),
              const Icon(Icons.people, size: 20),
            ],
          ),
        ],
      ),
    ],
  );

  Widget showPost(Userpost userPost) => Column(
    children: [
      postHeader(userPost),
      Container(
        margin: const EdgeInsets.all(8),
        child: Row(children: [Text(userPost.postcontent, style: nametxtStyle)]),
      ),
      postImage(userPost),
      postCount(userPost),
      const Divider(),
      buttons(userPost),
      SizedBox(height: 10, child: Container(color: Colors.grey)),
      const SizedBox(height: 15),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.userdata.userList.map((userPost) {
        return InkWell(
          onTap: () {
            gotoPage(context, ProfileView(userpost: userPost));
          },
          child: showPost(userPost),
        );
      }).toList(),
    );
  }
}