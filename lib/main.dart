import 'package:flutter/material.dart';
import 'package:flutter_app2_series/tv_show_card.dart';
import 'package:flutter_app2_series/tv_show_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Eu Amo Séries 🎬')),
        body: ListView(
          children: [
            ...favTvShowList.map((tvShow) => TvShowCard(tvShow: tvShow)),
          ],
        ),
      ),
    );
  }
}
