import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {
  Future<VideoPost> getTrendingVideosByPage(int page);
  Future<VideoPost> getFavoriteVideosByUser(String userID);
}
