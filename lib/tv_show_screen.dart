import 'package:flutter/material.dart';
import 'package:flutter_app2_series/tv_show_card.dart';
import 'package:flutter_app2_series/tv_show_model.dart';

class TvShowScreen extends StatefulWidget {
  const TvShowScreen({
    super.key,
    required this.tvShows,
    required this.removeTvShow,
  });

  final List<TvShow> tvShows;
  final Function(TvShow) removeTvShow;

  @override
  State<TvShowScreen> createState() => _TvShowScreenState();
}

class _TvShowScreenState extends State<TvShowScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tvShows.length,
      itemBuilder: (context, index) => TvShowCard(
        tvShow: widget.tvShows[index],
        index: index,
        removeTvShow: widget.removeTvShow,
      ),
    );
  }
}
