import 'package:totik/domain/datasources/video_posts_datasource.dart';
import 'package:totik/domain/entities/video_post.dart';
import 'package:totik/infrastructure/models/local_video_model.dart';
import 'package:totik/shared/data/location_video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID) {
    // TODO: implement getFavouriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async{
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      ( video ) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
    ).toList();

    return newVideos;
  }

}