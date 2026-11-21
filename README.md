Lab Activity 1: Flutter Newsfeed Application
Discussion
1. Dynamic Image Integration in newsfeed_card.dart
The image was integrated into the NewsfeedCard widget using an optional postImage parameter. This allows each newsfeed card to display an image when an image path is provided or hide the image when no image is available.
The Image.asset() widget is wrapped in a conditional statement that checks whether postImage is not null and not empty. If the condition is true, the image is displayed using the specified asset path. Otherwise, the image widget is not shown.
This makes the newsfeed card reusable for posts with or without images.
2. Profile Avatar Enhancement
The profile image was changed to use a CircleAvatar with an asset image. The profileImage parameter allows each post to use a specified profile picture. This also makes the profile avatar reusable across the newsfeed and comment section.
3. Widget-Based Like and Comment Buttons
The Like and Comment buttons were converted into a reusable NewsfeedActionButton widget. It accepts an icon, label, and color as parameters. The number of likes is displayed as the Like button’s label, while the Comment button displays its text label.
This improves code organization and makes the buttons easier to reuse and customize.
Conclusion
The enhancements improved the newsfeed application’s appearance, reusability, and code organization. The application can now display posts with or without images, use customized profile avatars, and organize Like and Comment buttons into reusable widgets.
Reference Materials
Provided SOURCE CODE.pdf
Flutter Documentation: https://docs.flutter.dev/
Flutter API Documentation: https://api.flutter.dev/