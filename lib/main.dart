import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const StreamingApp());
}

class StreamingApp extends StatelessWidget {
  const StreamingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab10-DAM - Catálogo de Streaming',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.tema,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.rutas,
    );
  }
}