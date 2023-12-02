import 'package:flutter/material.dart';
import 'package:hogme_ui/authentication/login_screen.dart';
import 'package:hogme_ui/dashboard/tutorial.dart';
import 'package:hogme_ui/utils/app_theme.dart';
import 'package:hogme_ui/utils/for_content_widget.dart';
import 'package:hogme_ui/utils/tap_content.dart';
import 'package:hogme_ui/utils/text_widgets.dart';
import 'package:hogme_ui/utils/video_player_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void signOut(BuildContext context) async {
    // Get the state of the authentication_service

    // Show a dialog with Yes and No options
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Sign Out'),
          content: const Text('Are you sure you want to sign out?'),
          actions: [
            TextButton(
              onPressed: () {
                // If the user clicks 'Yes', perform the sign-out
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
                // Close the dialog
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                // If the user clicks 'No', close the dialog without signing out
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dashboardBackground,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/icons/icon_hogme.png', // Replace with the path to your SVG file
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 8),
            const Text(
              'Hogme',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle shopping cart action
            },
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              // Handle notification action
            },
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              // Handle user avatar action
            },
            icon: const Icon(Icons.account_circle),
          ),
          IconButton(
            onPressed: () {
              // Handle logout action
              // You may want to call the logout method from your authentication service here
              signOut(context);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: text24Bold(text: 'Dashboard'),
            ),
            //announcement fetch latest record
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const ForContentWidget(
                  contentTitle: 'Announcement',
                ),
                TapContent(onTap: () {}),
              ],
            ),

            //announcement data records
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //announcement title
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: text16Bold(text: 'Sample Announcement'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: text14Normal(text: 'Sample Announcement Content'),
                    ),
                  ],
                ),
              ),
            ),
            //tutorials
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const ForContentWidget(
                  contentTitle: 'Tutorials',
                ),
                TapContent(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Tutorial(),
                    ),
                  );
                }),
              ],
            ),
            //tutorials data
            const Padding(
              padding: EdgeInsets.all(10.0),
              child:
                  VideoPlayerWidget(videoPath: 'assets/videos/sample_vid.mp4'),
            ),
          ],
        ),
      ),
    );
  }
}
