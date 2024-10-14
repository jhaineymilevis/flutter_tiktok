//mapper de los videos desde la api a local

import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'No name',
        videoUrl: json['video_url'] ?? '',
        likes: json['likes'] ?? 0,
        views: json['views'] ?? 0,
      );

  VideoPost toVideoPostEntity() =>
      VideoPost(videoUrl: videoUrl, caption: name, likes: likes, views: views);
}
