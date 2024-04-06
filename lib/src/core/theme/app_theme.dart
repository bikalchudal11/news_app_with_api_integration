import 'package:flutter/material.dart';

///Contains app theme data
class AppTheme {
  static ThemeData get appTheme => ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade200,
            titleTextStyle: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            )),
        scaffoldBackgroundColor: Colors.grey.shade200,
        textTheme: _textTheme,
      );
}

TextTheme get _textTheme => const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
    );
