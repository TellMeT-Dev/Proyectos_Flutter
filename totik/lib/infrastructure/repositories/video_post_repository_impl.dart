import 'package:totik/domain/datasources/video_posts_datasource.dart';
import 'package:totik/domain/entities/video_post.dart';
import 'package:totik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
  });


  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    
    return videosDatasource.getTrendingVideosByPage(page);

  }

}