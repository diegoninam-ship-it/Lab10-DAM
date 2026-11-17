import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/catalogo_screen.dart';
import '../screens/detalle_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String home = '/home';
  static const String catalogo = '/catalogo';
  static const String detalle = '/detalle';

  static Map<String, WidgetBuilder> get rutas => {
        '/': (context) => const HomeScreen(),
        home: (context) => const HomeScreen(),
        catalogo: (context) => const CatalogoScreen(),
        detalle: (context) => const DetalleScreen(),
      };
}