import 'package:flutter/material.dart';
import 'package:marasigan_mobprog/widgets/custom_text.dart';
class NewsfeedActionButton extends StatelessWidget {
 final IconData icon;
 final String label;
 final Color color;
 const NewsfeedActionButton({
   super.key,
   required this.icon,
   required this.label,
   required this.color,
 });
 @override
 Widget build(BuildContext context) {
   return TextButton.icon(
     onPressed: () {},
     icon: Icon(icon, color: color),
     label: CustomText(
       text: label,
       fontSize: 12,
       color: color,
     ),
   );
 }
}