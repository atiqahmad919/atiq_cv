import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  void _launcheURL(Uri uri, bool inApp) async {
    try {
      if (await canLaunchUrl(uri)) {
        if (inApp) {
          await launchUrl(
            uri,
            mode: LaunchMode.inAppWebView,
          );
        } else {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            icon: Image.asset('images/WhatsApp.png'),
            onPressed: () =>
                _launcheURL(Uri.parse('https://wa.me/+923209046755'), false)),
        IconButton(
          icon: Image.asset('images/LinkedIN.png'),
          onPressed: () => _launcheURL(
              Uri.parse('https://www.linkedin.com/in/atiqahmad919/'), false),
        ),
        IconButton(
          icon: Image.asset('images/Mail.png'),
          onPressed: () =>
              _launcheURL(Uri.parse('mailto:atiqahmad919@gmail.com'), false),
        ),
        IconButton(
          icon: Image.asset('images/Phone.png'),
          onPressed: () => _launcheURL(Uri.parse('tel:+923209046755'), false),
        ),
      ],
    );
  }
}
