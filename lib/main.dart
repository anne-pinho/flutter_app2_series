import 'package:flutter/material.dart';
import 'package:flutter_app2_series/tv_show_card.dart';
import 'package:flutter_app2_series/tv_show_data.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var color = Colors.purple;
    var colorScheme = ColorScheme.fromSeed(
      seedColor: color,
      brightness: Brightness.light,
    );

    var colorSchemeDark = ColorScheme.fromSeed(
      seedColor: color,
      brightness: Brightness.dark,
    );

    var customTheme = ThemeData(
      colorScheme: colorScheme,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: colorScheme.primary,
        titleTextStyle: GoogleFonts.nunito(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimary,
        ),
      ),
      cardTheme: CardThemeData(
        color: colorScheme.secondaryContainer,
        shadowColor: colorScheme.onSurface,
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

    var customThemeDark = ThemeData(
      colorScheme: colorSchemeDark,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: colorScheme.primary,
        titleTextStyle: GoogleFonts.nunito(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimary,
        ),
      ),
      cardTheme: CardThemeData(
        color: colorScheme.onSecondaryContainer,
        shadowColor: colorScheme.onSurface,
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      darkTheme: customThemeDark,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(title: const Text('Eu Amo Séries 🎬')),
        body: ListView.builder(
          itemCount: favTvShowList.length,
          itemBuilder: (context, index) =>
              TvShowCard(tvShow: favTvShowList[index], index: index),
        ),
      ),
    );
  }
}
