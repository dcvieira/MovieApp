import 'package:flutter/material.dart';

class MoviesHorizontalList extends StatelessWidget {
  const MoviesHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      height: 230,
    );
  }
}
