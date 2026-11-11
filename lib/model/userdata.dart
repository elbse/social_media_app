import 'package:social_media_app/model/userpost.dart';
import 'package:social_media_app/model/friend.dart';
import 'package:social_media_app/model/usercomment.dart';
import 'package:social_media_app/model/account.dart';

class Userdata{
  List<Userpost> userList = [

    Userpost(
      userimg: 'assets/person1.jpg',
      username: 'Jane Doe',
      time: '2 hrs ago',
      postcontent: 'Had a great day at the beach!',
      postimg: 'assets/beach.jpg',
      numcomments: '24',
      numshare: '5',
      isLiked: false,
    ),

    Userpost(
      userimg: 'assets/person2.jpg',
      username: 'Mary Smith',
      time: '5 hrs ago',
      postcontent: 'Lovin the new cafe in town!',
      postimg: 'assets/cafe.jpg',
      numcomments: '12',
      numshare: '10',
      isLiked: true,
    ),

    Userpost(
      userimg: 'assets/person3.jpg',
      username: 'Dorothy',
      time: '10 hrs ago',
      postcontent: 'Had a great 10km walk!',
      postimg: 'assets/park.jpg',
      numcomments: '4',
      numshare: '2',
      isLiked: false,
    ),

    Userpost(
      userimg: 'assets/person4.jpg',
      username: 'Anna Clint',
      time: '2 hrs ago',
      postcontent: 'Just finished my readings',
      postimg: 'assets/library.jpg',
      numcomments: '20',
      numshare: '19',
      isLiked: true,
    ),

    Userpost(
        userimg: 'assets/person4.jpg',
        username: 'Anna Clint',
        time: '2 hrs ago',
        postcontent: 'Just finished my readings',
        postimg: 'assets/library.jpg',
        numcomments: '20',
        numshare: '19',
        isLiked: true,
      ),
    ];

  List<Friend> friendList = [

    Friend(img: 'assets/person1.jpg', name: 'Jane Doe'),
    Friend(img: 'assets/person2.jpg', name: 'Mary Smith'),
    Friend(img: 'assets/person3.jpg', name: 'Dorothy'),
    Friend(img: 'assets/person4.jpg', name: 'Anna Clint'),
  ];

  List<Usercomment> commentList = [
    Usercomment(commenterImg: 'assets/person2.jpg', 
                commenterName: 'Mary Smith', 
                commenterTime: '2 hrs', 
                commenterContent: 'Amazinggg'),
    Usercomment(commenterImg: 'assets/person3.jpg', 
                  commenterName: 'Dorothy', 
                  commenterTime: '2 hrs', 
                  commenterContent: 'Wow, that is beautiful'),
    Usercomment(commenterImg: 'assets/person1.jpg', 
                  commenterName: 'Jane Doe', 
                  commenterTime: '2 hrs', 
                  commenterContent: 'That is great.'),
    Usercomment(commenterImg: 'assets/person4.jpg', 
                  commenterName: 'Anna Clint', 
                  commenterTime: '2 hrs', 
                  commenterContent: 'Enjoyy!'),
   
  ]; 

  Account myUserAccount = Account(
  name: 'Charisse Priego',
  email: 'charissepriego@gmail.com',
  img: 'assets/profile.jpg', 
  numFollowers: '300',
  numPosts: '2', 
  numFollowing: '201' ,
  numFriends: '6',
  );
}