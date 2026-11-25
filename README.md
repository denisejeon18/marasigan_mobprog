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

Lab Activity 2: Flutter Notification Screen
Discussion

1. Dynamic Notification Management
   The notification screen was developed using a reusable NotificationWidget and a list of notification data stored in notification_screen.dart.
   Each notification contains different information, including the user’s name, post, description, date, and number of reactions. A hasPlaceholder parameter determines whether an image placeholder will appear in the notification.
   The ListView.separated() widget was used to display multiple notifications in a scrollable list with dividers between each item. This makes notification management more organized and allows users to browse multiple notifications efficiently.
2. Dynamic AppBar Title
   The AppBar title was enhanced to change dynamically depending on the currently selected navigation tab. A list of titles was created, and the selected index determines which title is displayed.
   This allows the application to display titles such as Bunniverse | Home, Bunniverse | Notifications, Bunniverse | Friends, Bunniverse | Marketplace, and Bunniverse | Profile.
3. Additional Bottom Navigation Items
   The BottomNavigationBar was expanded from two items to five: Home, Notifications, Friends, Marketplace, and Profile.
   The PageView widget was also updated to provide a corresponding page for each navigation item. The selected index keeps the displayed page and navigation icon synchronized.
4. Custom Social Media Application Name
   The application’s branding was changed from Facebook to Bunniverse, a NewJeans-inspired social media application name.
   The AppBar titles were updated to use the new name, and the AndroidManifest.xml file was modified to change the application’s display name to Bunniverse.
5. Customized Color Palette
   The original Facebook-inspired blue color palette was replaced with a NewJeans-inspired pastel blue theme.
   The colors were updated in constant.dart, using sky blue, denim blue, navy blue, ice blue, and white. The existing constant variable names were retained to maintain compatibility with the other application files.
   Challenges and Solutions
   One challenge encountered was displaying multiple notifications with different information while keeping the layout organized. This was solved by using a List of Maps to store notification data and ListView.separated() to display the records.
   Another challenge was synchronizing the AppBar title, PageView, and BottomNavigationBar. This was addressed by using the selected index to determine the active page and corresponding title.
   The application also required additional navigation items and a customized appearance. These were implemented by adding more BottomNavigationBarItems and updating the existing color constants without changing their variable names.
   Conclusion
   The enhancements improved the functionality, navigation, and appearance of the Flutter application. The notification screen can now display multiple scrollable notifications with different dates, reaction counts, and optional image placeholders. The application also features a dynamic AppBar title, five navigation items, a customized Bunniverse name, and a NewJeans-inspired color palette.
   Reference Materials
   Provided SOURCE CODE(2).pdf
   Flutter Documentation: https://docs.flutter.dev/
   Flutter API Documentation: https://api.flutter.dev/
