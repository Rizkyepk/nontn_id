import 'package:flutter/material.dart';
import 'package:nontn_id/data/movie.dart';
import 'package:nontn_id/widget/movie_content_box_widget.dart';
import 'package:nontn_id/widget/movie_image_widget.dart';

class MovieDetailScreen extends StatelessWidget {
  final String movieId;
  final Movies movie;

  const MovieDetailScreen(
      {super.key, required this.movieId, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                movie.thumbnailUrl,
                height: 210,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const Icon(Icons.play_arrow_rounded),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: 20,
              ),
              MovieImageWidget(
                movie: movie,
                height: 190,
                width: 130,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      movie.title,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Director'), Text('Vin Disel')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Director'), Text('Vin Disel')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Director'), Text('Vin Disel')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Director'), Text('Vin Disel')],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: MovieContentBoxWidget(
                  title: Text('Rating'), 
                  value: '8,5/10',
                  ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: MovieContentBoxWidget(
                title: Text('Duration'), 
                value: '152 M',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: MovieContentBoxWidget(
                title: Text('PG'), 
                value: '13+',
                ),
              ),SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
