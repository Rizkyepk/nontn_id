import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:nontn_id/data/movie.dart';
import 'package:nontn_id/widget/banner_widget.dart';
import 'package:nontn_id/widget/home_top_bar_widget.dart';
import 'package:nontn_id/widget/now_playing_text_widget.dart';
import 'package:nontn_id/widget/now_showing_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movies>? moviesData;

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      setState(() {
        moviesData = null;
      });

      // prosses parsing
      String dummyMovieJsonString =
          await rootBundle.loadString('assets/json/dummy_movie.json');
      List<dynamic> dummyMoviesMap =
          jsonDecode(dummyMovieJsonString)['movies'] as List<dynamic>;

      setState(() {
        // moviesData = dummyMoviesMap.map((element) {
        //   return Movies(
        //       title: element['title'] ?? '',
        //       thumbnailUrl: element['thumbnail'] ?? '');
        // }).toList();

        moviesData =
            dummyMoviesMap.map((element) => Movies.fromMap(element)).toList();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(height: 20),
      // bar profile, location, notif
      const HomeTopBarWidget(),
      const SizedBox(height: 20),
      // carousel
      const BannerWidhet(),
      const SizedBox(height: 57),
      // film now playing
      const NowPlayingTextWidget(),
      const SizedBox(height: 29),
      SizedBox(
        height: 240,
        width: double.infinity,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            // difinisikan karna defultnya vertical
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 8,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 14,
              );
            },
            itemBuilder: (context, int index) {
              return MovieListItemWidget(movie: moviesData![index],);
            }),
      )
    ]);
  }
}
