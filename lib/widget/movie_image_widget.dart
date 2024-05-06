import 'package:flutter/material.dart';
import 'package:nontn_id/data/movie.dart';

class MovieImageWidget extends StatelessWidget {
  final double height;
  final double width;
  const MovieImageWidget({
    super.key,
    required this.movie, 
     this.height = 210, 
     this.width = 150,
  });

  final Movies movie;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 20,
            spreadRadius: 3,
            color: Colors.black.withOpacity(0.4),
          )
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            movie.thumbnailUrl,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
        ));
  }
}
