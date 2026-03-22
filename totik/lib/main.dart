import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:totik/config/theme/app_theme.dart';
import 'package:totik/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:totik/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:totik/presentation/providers/discover_provider.dart';
import 'package:totik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostReposity = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasource()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(videosRepository: videoPostReposity)..loadNextPage(),
        )
      ],
      child: MaterialApp(
        title: 'Tok Tik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}