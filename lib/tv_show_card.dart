import 'package:flutter/material.dart';
import 'package:flutter_app2_series/tv_show_model.dart';

class TvShowCard extends StatelessWidget {
  const TvShowCard({super.key, required this.tvShow});

  final TvShow tvShow;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.stream),
        title: Text(tvShow.title),
        subtitle: Text(tvShow.stream),
        trailing: Text(tvShow.rating.toString()),
      ),
    );
  }
}
