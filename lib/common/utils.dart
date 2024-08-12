import 'package:flutter/material.dart';

const imageUrl = 'https://image.tmdb.org/t/p/w500';
const kBackgoundColor = Color(0xff121012);
const kbuttonColor = Color.fromARGB(255, 89, 54, 133);
const apiKey = '5f9d4bd0608c0d8b303396a95e29c3a5';
Color backgroundPrimary = Color.fromARGB(255, 171, 169, 180);

String getGenres(List<int> genres) {
  Map<int, String> genreName = {
    28: 'Action',
    12: 'Adventure',
    16: 'Animation',
    35: 'Comedy',
    80: 'Crime',
    99: 'Documentary',
    18: 'Drama',
    10751: 'Family',
    14: 'Fantasy',
    36: 'History',
    27: 'Horror',
    10402: 'Music',
    9648: 'Mystery',
    10749: 'Romance',
    878: 'Science Fiction',
    10770: 'TV Movie',
    53: 'Thriller',
    10752: 'War',
    37: 'Western',
    10759: 'Action & Adventure',
    10762: 'Kids',
    10763: 'News',
    10764: 'Reality',
    10765: 'Sci-Fi & Fantasy',
    10766: 'Soap',
    10767: 'Talk',
    10768: 'War & Politics',
  };

  String? genreString;

  for (var genre in genres) {
    var genreTest = genreName[genre];
    if (genreString == null) {
      if (genreTest != null) {
        genreString = genreName[genre];
      }
    } else {
      if (genreTest != null) {
        genreString = '$genreString, ${genreName[genre]!}';
      }
    }
  }

  return genreString ?? '';
}
