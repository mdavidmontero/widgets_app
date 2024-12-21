import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.purple,
  Colors.orange,
  Colors.cyan,
  Colors.brown,
  Colors.black,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme( {this.selectedColor = 0,this.isDarkMode= false})
      : assert(selectedColor >= 0, 'selected color must be greather then 0'),
        assert(selectedColor < colorList.length,
            'selected color must be less then colorList.length');
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false
        )
      );
}
