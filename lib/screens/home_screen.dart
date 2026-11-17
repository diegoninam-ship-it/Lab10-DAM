import 'package:flutter/material.dart';
import '../data/plataformas_data.dart';
import '../routes/app_routes.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catálogo de Streaming',
          style: AppTheme.tituloFuente.copyWith(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: plataformas.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final String nombre = plataformas.keys.elementAt(index);
          final Map<String, dynamic> datos = plataformas[nombre]!;

          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: Image.asset(
                datos['logo'] as String,
                width: 48,
                height: 48,
              ),
              title: Text(
                nombre,
                style: AppTheme.tituloFuente.copyWith(fontSize: 18, color: Colors.white),
              ),
              subtitle: Text(
                'Ver catálogo',
                style: AppTheme.cuerpoFuente.copyWith(color: Colors.white70),
              ),
              trailing: Icon(Icons.chevron_right, color: datos['color'] as Color),
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.catalogo,
                arguments: nombre,
              ),
            ),
          );
        },
      ),
    );
  }
}