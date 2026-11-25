import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marasigan_mobprog/widgets/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    required this.date,
    required this.values,
    this.hasPlaceholder = false,
  });
  final String name;
  final String post;
  final String description;
  final String date;
  final int values;
  final bool hasPlaceholder;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(child: Icon(Icons.person)),
          SizedBox(width: ScreenUtil().setSp(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(20),
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                CustomText(
                  text: 'Post: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
                SizedBox(height: ScreenUtil().setSp(5)),
                if (hasPlaceholder)
                  Container(
                    height: ScreenUtil().setSp(60),
                    width: ScreenUtil().setSp(60),
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.image),
                  ),
                CustomText(
                  text: '$values reactions • $date',
                  fontSize: ScreenUtil().setSp(11),
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
