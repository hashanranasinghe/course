import 'package:course_ui_components/utils/constants.dart';
import 'package:flutter/material.dart';

class VideoPlayCard extends StatefulWidget {
  final String videoTitle;
  final String videoLength;
  final String videoNumber;
  final Function onPress;
  final bool isWatched;
  const VideoPlayCard(
      {Key? key,
      required this.videoTitle,
      required this.videoLength,
      required this.isWatched, required this.videoNumber, required this.onPress})
      : super(key: key);

  @override
  State<VideoPlayCard> createState() => _VideoPlayCardState();
}

class _VideoPlayCardState extends State<VideoPlayCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        widget.videoNumber,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryTextColorDark),
      ),
      title: Text(widget.videoTitle),
      subtitle: Row(
        children: [
          Text(
            "${widget.videoLength} mins",
            style: TextStyle(color: kPrimaryButtonColorDark, fontSize: 12),
          ),
          SizedBox(
            width: 5,
          ),
          widget.isWatched?Icon(
            Icons.done_outline_outlined,
            size: 15,
            color: kPrimaryButtonColorDark,
          ):Container()
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            widget.onPress();
          },
          icon: Icon(
            Icons.play_circle_fill_rounded,
            color: kPrimaryButtonColorDark,
            size: 30,
          ))
    );
  }
}
