import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/widgets/custom_card_thumbnail.dart';

class NowPlayingList extends StatefulWidget {
  final Result result;
  const NowPlayingList({super.key, required this.result});

  @override
  State<NowPlayingList> createState() => _NowPlayingListState();
}

class _NowPlayingListState extends State<NowPlayingList> {
  final PageController _pageController = PageController(viewportFraction: 0.9);

  int currentPage = 1;
  final maxItems = 5;

  @override
  Widget build(BuildContext context) {
    final totalItems = widget.result.movies.length;

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: PageView.builder(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            itemCount: totalItems > maxItems ? maxItems : totalItems,
            itemBuilder: (context, index) {
              final imgUrl = widget.result.movies[index].posterPath;
              return CustomCardThumbnail(
                imageAsset: imgUrl,
              );
            },
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicators(),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicators() {
    final totalItems = widget.result.movies.length;
    final int to = totalItems > maxItems ? maxItems : totalItems;

    List<Widget> list = [];
    for (int i = 0; i < to; i++) {
      list.add(
          i == currentPage ? _buildIndicator(true) : _buildIndicator(false));
    }
    return list;
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
