import 'package:marasigan_mobprog/widgets/newsfeed_card.dart';
import 'package:flutter/material.dart';
class NewsfeedScreen extends StatelessWidget {
 const NewsfeedScreen({super.key});
 @override
 Widget build(BuildContext context) {
   return ListView(
     children: const [
       NewsfeedCard(
         userName: 'Kim Minji',
         postContent: 'Just enjoying my day! 💗',
         date: '2 hours ago',
         numOfLikes: 10,
         profileImage: 'assets/images/profile_minji.jpg',
       ),
       NewsfeedCard(
         userName: 'Kim Minji',
         postContent: 'A little photo dump! 🥰',
         date: 'December 1, 2026',
         numOfLikes: 3000,
         profileImage: 'assets/images/profile_minji.jpg',
         postImage: 'assets/images/post_minji.jpg',
       ),
     ],
   );
 }
}