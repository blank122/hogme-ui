import 'package:flutter/material.dart';
import 'package:hogme_ui/utils/video_player_widget.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({super.key});

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 8),
            Text(
              'Hogme',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: TutorialSearchDelegate(),
              );
              print('Search button pressed');
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child:
                  VideoPlayerWidget(videoPath: 'assets/videos/sample_vid.mp4'),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child:
                  VideoPlayerWidget(videoPath: 'assets/videos/sample_vid.mp4'),
            ),
            Padding(
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

class TutorialSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement your search logic here based on the 'query'
    // Return the results as a list of widgets
    return Container(
      // Replace this with your search results UI
      child: Text('Search results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement suggestions based on the 'query'
    // Return the suggestions as a list of widgets
    return Container(
      // Replace this with your search suggestions UI
      child: Text('Suggestions for: $query'),
    );
  }
}
