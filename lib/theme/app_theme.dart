import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  // Fuente 1: títulos y nombres de categoría — peso fuerte, da jerarquía.
  static TextStyle get tituloFuente =>
      GoogleFonts.poppins(fontWeight: FontWeight.w600);

  // Fuente 2: cuerpo de texto — descripciones, legible en bloques largos.
  static TextStyle get cuerpoFuente => GoogleFonts.inter();

  // Fuente 3: datos puntuales — calificación, año, duración.
  static TextStyle get datoFuente =>
      GoogleFonts.oswald(fontWeight: FontWeight.w600);

  static ThemeData get tema {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF141414),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF141414),
        elevation: 0,
        titleTextStyle: tituloFuente.copyWith(fontSize: 20, color: Colors.white),
      ),
      cardTheme: CardThemeData(
        color: const Color(0xFF1F1F1F),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      textTheme: TextTheme(
        titleLarge: tituloFuente.copyWith(fontSize: 22, color: Colors.white),
        titleMedium: tituloFuente.copyWith(fontSize: 16, color: Colors.white),
        bodyMedium: cuerpoFuente.copyWith(fontSize: 14, color: Colors.white70),
        labelLarge: datoFuente.copyWith(fontSize: 12, color: Colors.white),
      ),
    );
  }
}