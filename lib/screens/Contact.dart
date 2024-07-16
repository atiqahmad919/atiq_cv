import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/social_media_icons.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('Contact Me')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text('Feel free to shoot a message about your next project!\n\n'),
            SocialMediaIcons()
          ],
        ),
      ),
    );
  }
}
