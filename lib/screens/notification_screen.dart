import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marasigan_mobprog/widgets/notification_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> notifications = [
    {
      'name': 'Hanni Pham',
      'post': 'Your latest post',
      'description': 'liked your post.',
      'date': '2 hours ago',
      'values': 25,
      'hasPlaceholder': true,
    },
    {
      'name': 'Kim Minji',
      'post': 'Your photo',
      'description': 'commented: So pretty!',
      'date': '5 hours ago',
      'values': 12,
      'hasPlaceholder': false,
    },
    {
      'name': 'Danielle Marsh',
      'post': 'Your status',
      'description': 'reacted to your post.',
      'date': 'Yesterday',
      'values': 48,
      'hasPlaceholder': true,
    },
    {
      'name': 'Haerin Kang',
      'post': 'Your latest update',
      'description': 'shared your post.',
      'date': 'Yesterday',
      'values': 8,
      'hasPlaceholder': false,
    },
    {
      'name': 'Hyein Lee',
      'post': 'Your photo',
      'description': 'liked your photo.',
      'date': '2 days ago',
      'values': 31,
      'hasPlaceholder': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return NotificationWidget(
            name: notification['name'],
            post: notification['post'],
            description: notification['description'],
            date: notification['date'],
            values: notification['values'],
            hasPlaceholder: notification['hasPlaceholder'],
          );
        },
      ),
    );
  }
}
