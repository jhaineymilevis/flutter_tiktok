import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastucture/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, Datasource
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

//agrego los nuevos videos ala lista de videos
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
