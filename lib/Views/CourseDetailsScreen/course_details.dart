import 'package:e_learing_ui_app/Utills/colors.dart';
import 'package:e_learing_ui_app/Views/OnboardingScreen/HomeView/widgets/custom_app_view.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseDetails extends StatefulWidget {
  final String courseName;
  const CourseDetails({super.key, required this.courseName});
  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  late VideoPlayerController _controller;
  @override

  // ignore: must_call_super
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: customAppBar(context: context, tittle: widget.courseName),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * .25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(.1),
                        blurRadius: 5,
                        spreadRadius: .5),
                  ]),
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : const Center(
                      child: Text("Please wait"),
                    ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Career With flutter!!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Text(
                  "Created By;",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.5)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "'Online Sourse'!!",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.black.withOpacity(.5),
                    ),
                    Text(
                      "5.6",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.access_time_outlined,
                      color: Colors.black.withOpacity(.5),
                    ),
                    Text(
                      "100 Hours!!",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "\$100",
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
