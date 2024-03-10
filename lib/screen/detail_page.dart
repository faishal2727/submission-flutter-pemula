import 'package:flutter/material.dart';
import 'package:submission_pemula_dicoding/models/movies.dart';
import 'package:submission_pemula_dicoding/widgets/favorite_button.dart';

class DetailPage extends StatelessWidget {
  final Movies movies;
  const DetailPage({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Detail',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              movies.thumbnail,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          movies.title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.book_outlined,
                            size: 14,
                          ),
                          Text(
                            "${movies.episode} episode ",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Container(
                        width: 1.0,
                        height: 12.0,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          const Text(" "),
                          const Icon(
                            Icons.timer_outlined,
                            size: 14,
                          ),
                          Text(
                            movies.duration,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.date_range,
                        size: 14,
                      ),
                      Text(
                        movies.releaseDate,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Genre : ${movies.genre}",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text("Producer : ${movies.producer}"),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    "Sinopsis",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    movies.synopsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
