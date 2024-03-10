import 'package:flutter/material.dart';
import 'package:submission_pemula_dicoding/models/movies.dart';

class CardMovies extends StatelessWidget {
  final Movies movies;
  const CardMovies({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Hero(
            tag: movies.thumbnail,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                    image: AssetImage(movies.thumbnail), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    16,
                  ),
                  bottomRight: Radius.circular(16.0),
                ),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(21, 0, 0, 0),
                  Color.fromARGB(226, 0, 0, 0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movies.title,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    "Episode ${movies.episode}",
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
