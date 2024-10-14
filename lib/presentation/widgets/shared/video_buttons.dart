import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_format.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CusomIconButtom(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
        ),
        _CusomIconButtom(
          value: video.views,
          iconData: Icons.remove_red_eye,
        ),
      ],
    );
  }
}

class _CusomIconButtom extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;
  const _CusomIconButtom(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        Text(HumanFormat.humanReadableNumber(value))
      ],
    );
  }
}
