import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ScreenshotsWidget extends StatelessWidget {
  final List<String> screenshots;

  const ScreenshotsWidget({
    super.key,
    required this.screenshots,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: screenshots.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: CachedNetworkImage(
              imageUrl: screenshots[index],
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
