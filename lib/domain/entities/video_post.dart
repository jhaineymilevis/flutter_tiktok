class VideoPost {
  final String videoUrl;
  final String caption;
  final int likes;
  final int views;
  VideoPost(
      {required this.videoUrl,
      required this.caption,
      this.likes = 0,
      this.views = 0});
}
