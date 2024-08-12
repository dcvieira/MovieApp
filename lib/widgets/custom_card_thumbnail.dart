import 'package:flutter/material.dart';
import 'package:movie_app/common/utils.dart';

class CustomCardThumbnail extends StatelessWidget {
  final String imageAsset;

  const CustomCardThumbnail({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(
            '$imageUrl$imageAsset',
          ),
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
    );
  }
}
