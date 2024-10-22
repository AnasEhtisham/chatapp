import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);  // Convert the URL to a Uri object
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication); // Open in a web browser
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/my pic.jpg'),
              ),
            ),
            SizedBox(height: 16),


            Text(
              'Anas Ehtisham',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Business Developer & Flutter Enthusiast',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),


            Text(
              'I am passionate about creating user-friendly mobile applications. Currently learning Flutter development and enhancing my skills in business development and lead generation.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),


            Center(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () => _launchURL('https://www.linkedin.com/in/anas-ehtisham/'),
                    child: Text('LinkedIn'),
                  ),
                  TextButton(
                    onPressed: () => _launchURL('https://www.instagram.com/anas_ehtisham/'),
                    child: Text('Instagram'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
