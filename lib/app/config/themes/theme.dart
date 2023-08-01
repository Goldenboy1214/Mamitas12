//Se crea la clase AppTheme que contiene el tema de la aplicación
import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF027373);

// Seleccionar los colores de su aplicación NO UTILIZAR LOS COLORES DE EJEMPLO
const List<Color> _colorTheme=[
  _customColor,
  Color(0xFFcccccc),
  Color(0xFFAFACF9),
  Color(0xFF07E0D5),
  Color(0xff6c63ff),
];

class AppTheme{
  final int selectedThemeColor;

  AppTheme({
    this.selectedThemeColor = 0,
  }):assert(selectedThemeColor >= 0 && selectedThemeColor < _colorTheme.length);

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedThemeColor],
      fontFamily: 'Odin Rounded',
      // textTheme define el estilo de los textos
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: _colorTheme[selectedThemeColor],
          fontSize: 20,
        ),
      ),
      appBarTheme: AppBarTheme(
        color: _colorTheme[selectedThemeColor],
        foregroundColor: Colors.white,
      ),

    );
  }
}

