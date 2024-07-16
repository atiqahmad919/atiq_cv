import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/social_media_icons.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kTertiaryColor,
      // appBar: AppBar(title: Text('About Me')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/atiq_profile.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Atiq Ahmad',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(children: [
              Text(
                  'With a robust background in computer science and a keen eye for design, I am a dedicated Flutter developer with professional experience since 2023. I hold an MS in Computer Science from the Virtual University of Pakistan, which has equipped me with a strong foundation in software development principles and practices.'),
              Text(
                  '\nI began my career at CircleX, where I honed my skills in developing cross-platform mobile applications. My journey continued at Trellis Digital Agency, where I am currently employed, further expanding my expertise in creating seamless and efficient mobile solutions. My work is characterized by meticulous attention to detail, a commitment to delivering high-quality code, and a passion for crafting user-centric designs.'),
              Text(
                  '\nI am driven by a relentless pursuit of excellence and a deep-seated passion for technology. As a result, I consistently strive to stay ahead of industry trends and continuously refine my skills. My experience spans various projects, each contributing to my comprehensive understanding of the mobile app development lifecycle.'),
            ]),
            // const SizedBox(height: 20),
            // const Text(
            //   'I am a Flutter developer and UI/UX designer from Pakistan. '
            //   'I have done my Masters in Computer Science from Virtual University of Pakistan. '
            //   'I have worked with a prestigious organization, CircleX, as a Flutter developer and currently working at Trellis Agency. '
            //   'I have developed various Flutter projects and enjoy tackling new challenges.',
            //   style: TextStyle(fontSize: 16),
            // ),
            SizedBox(height: 20),
            SocialMediaIcons(),
          ],
        ),
      ),
    );
  }
}
