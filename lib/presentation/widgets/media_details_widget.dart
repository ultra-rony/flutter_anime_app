import 'package:flutter/cupertino.dart';

class MediaDetailsWidget extends StatelessWidget {
  final String title;
  final String value;

  const MediaDetailsWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        Text(
          value,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        )
      ],
    );
  }
}
