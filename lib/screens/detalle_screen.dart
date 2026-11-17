import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class DetalleScreen extends StatelessWidget {
  const DetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> contenido =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          contenido['titulo'] as String,
          style: AppTheme.tituloFuente.copyWith(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              contenido['poster'] as String,
              width: double.infinity,
              height: 280,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 280,
                color: Colors.grey[800],
                child: const Icon(Icons.broken_image, color: Colors.white54, size: 48),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contenido['titulo'] as String,
                    style: AppTheme.tituloFuente.copyWith(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text('${contenido['calificacion']}',
                          style: AppTheme.datoFuente.copyWith(color: Colors.white)),
                      const SizedBox(width: 16),
                      Text('${contenido['anio']}',
                          style: AppTheme.datoFuente.copyWith(color: Colors.white70)),
                      const SizedBox(width: 16),
                      Text('${contenido['duracion']}',
                          style: AppTheme.datoFuente.copyWith(color: Colors.white70)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    contenido['descripcion'] as String,
                    style: AppTheme.cuerpoFuente.copyWith(
                      fontSize: 14,
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow),
                      label: Text('Reproducir', style: AppTheme.tituloFuente.copyWith(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}