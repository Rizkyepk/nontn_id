import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontn_id/data/movie.dart';
import 'package:nontn_id/route/route_constant.dart';
import 'package:nontn_id/widget/movie_image_widget.dart';

class MovieListItemWidget extends StatelessWidget {
  final Movies movie;
  const MovieListItemWidget({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(
          RouteConstant.movieDetail, 
          pathParameters: {
            'movie': 'Movie-${movie.title}',
          },
          extra: movie,
        );
      },
      child: Container(
        width: 150,
        child: Column(
          children: [
            MovieImageWidget(movie: movie),
            Text(
              movie.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ]
        ),
      ),
    );
  }
}

