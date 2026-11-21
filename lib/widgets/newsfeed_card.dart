import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marasigan_mobprog/constant.dart';
import 'package:marasigan_mobprog/widgets/custom_text.dart';
import 'package:marasigan_mobprog/widgets/newsfeed_action_button.dart';
import 'package:flutter/material.dart';
class NewsfeedCard extends StatelessWidget {
 final String userName;
 final String postContent;
 final String date;
 final int? numOfLikes;
 final String? profileImage;
 final String? postImage;
 const NewsfeedCard({
   super.key,
   required this.userName,
   required this.postContent,
   required this.date,
   this.numOfLikes,
   this.profileImage,
   this.postImage,
 });
 @override
 Widget build(BuildContext context) {
   final screenUtil1Sp = ScreenUtil().setSp(10);
   final screenUtil1Width = ScreenUtil().setWidth(10);
   final screenUtil1FontUserNameSize = ScreenUtil().setSp(15);
   final screenUtil1IconSize = ScreenUtil().setSp(15);
   return Card(
     margin: EdgeInsets.all(screenUtil1Sp),
     child: Padding(
       padding: EdgeInsets.all(screenUtil1Sp),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           // Profile picture and user information
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               CircleAvatar(
                 radius: 20,
                 backgroundImage: profileImage != null
                     ? AssetImage(profileImage!)
                     : null,
                 child: profileImage == null
                     ? const Icon(Icons.person)
                     : null,
               ),
               SizedBox(width: screenUtil1Width),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CustomText(
                     text: userName,
                     fontSize: screenUtil1FontUserNameSize,
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CustomText(
                         text: date,
                         fontSize: ScreenUtil().setSp(12),
                         color: Colors.grey,
                       ),
                       SizedBox(width: ScreenUtil().setWidth(3)),
                       Icon(
                         Icons.public,
                         color: Colors.grey,
                         size: screenUtil1IconSize,
                       ),
                     ],
                   ),
                 ],
               ),
               const Spacer(),
               const Icon(Icons.more_horiz),
             ],
           ),
           SizedBox(height: ScreenUtil().setHeight(5)),
           // Post content
           CustomText(
             text: postContent,
             fontSize: ScreenUtil().setSp(12),
             color: Colors.black,
           ),
           SizedBox(height: ScreenUtil().setHeight(5)),
           // Dynamic post image
           if (postImage != null && postImage!.isNotEmpty)
             Image.asset(
               postImage!,
               width: double.infinity,
               fit: BoxFit.cover,
             ),
           // Like, comment, and share buttons
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               NewsfeedActionButton(
                 icon: Icons.thumb_up,
                 label: (numOfLikes ?? 0).toString(),
                 color: fbPrimary,
               ),
               NewsfeedActionButton(
                 icon: Icons.comment,
                 label: 'Comment',
                 color: fbDarkPrimary,
               ),
               TextButton.icon(
                 onPressed: () {},
                 icon: Icon(Icons.redo, color: fbDarkPrimary),
                 label: CustomText(
                   text: 'Share',
                   fontSize: ScreenUtil().setSp(12),
                   color: fbDarkPrimary,
                 ),
               ),
             ],
           ),
           // Comment section
           Row(
             children: [
               CircleAvatar(
                 radius: 15,
                 backgroundImage: profileImage != null
                     ? AssetImage(profileImage!)
                     : null,
                 child: profileImage == null
                     ? const Icon(Icons.person, size: 18)
                     : null,
               ),
               SizedBox(width: ScreenUtil().setWidth(10)),
               Expanded(
                 child: Container(
                   padding: EdgeInsets.fromLTRB(
                     ScreenUtil().setWidth(10),
                     0,
                     0,
                     0,
                   ),
                   alignment: Alignment.centerLeft,
                   height: ScreenUtil().setHeight(25),
                   decoration: BoxDecoration(
                     color: Colors.grey[200],
                     borderRadius: BorderRadius.all(
                       Radius.circular(ScreenUtil().setSp(10)),
                     ),
                   ),
                   child: CustomText(
                     text: 'Write a comment...',
                     fontSize: ScreenUtil().setSp(11),
                     color: Colors.grey,
                   ),
                 ),
               ),
             ],
           ),
         ],
       ),
     ),
   );
 }
}