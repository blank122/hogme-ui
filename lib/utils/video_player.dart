// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerWidget extends StatefulWidget {
//   final String videoPath;

//   const VideoPlayerWidget({required this.videoPath, Key? key})
//       : super(key: key);

//   @override
//   _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
// }

// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   late VideoPlayerController _controller;
//   late Future<void> _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     // super.initState();
//     // _controller = VideoPlayerController.asset(widget.videoPath)
//     //   ..addListener(() => setState(() {}))
//     //   ..setLooping(true)
//     //   ..initialize().then((_) => _controller.play());
//     super.initState();
//     _controller = VideoPlayerController.asset(widget.videoPath);
//     _initializeVideoPlayerFuture = _controller.initialize();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _initializeVideoPlayerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return AspectRatio(
//             aspectRatio: _controller.value.aspectRatio,
//             child: VideoPlayer(_controller),
//           );
//         } else {
//           return const Center(child: CircularProgressIndicator());
//         }
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
