import 'package:angle_on/class/movie_card.dart';
import 'package:flutter/material.dart';

class MovieCardDesign extends StatefulWidget {
  MovieCard? item;
  MovieCardDesign({Key? key, required this.item}) : super(key: key);

  @override
  State<MovieCardDesign> createState() => _MovieCardDesignState();
}

class _MovieCardDesignState extends State<MovieCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(image: AssetImage(widget.item!.movieImage),fit:BoxFit.cover),
      ),
    );
  }
}
