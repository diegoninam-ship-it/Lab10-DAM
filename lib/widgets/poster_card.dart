import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class PosterCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final Color colorAcento;
  final VoidCallback onTap;

  const PosterCard({
    super.key,
    required this.item,
    required this.colorAcento,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.only(right: 12),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Póster cargado desde la nube: Image.network, no un asset local.
              Image.network(
                item['poster'] as String,
                height: 170,
                width: 130,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return SizedBox(
                    height: 170,
                    width: 130,
                    child: Center(
                      child: CircularProgressIndicator(color: colorAcento, strokeWidth: 2),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 170,
                  width: 130,
                  color: Colors.grey[800],
                  child: const Icon(Icons.broken_image, color: Colors.white54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['titulo'] as String,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.cuerpoFuente.copyWith(fontSize: 12, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, size: 12, color: colorAcento),
                        const SizedBox(width: 4),
                        Text(
                          '${item['calificacion']}  ·  ${item['anio']}',
                          style: AppTheme.datoFuente.copyWith(fontSize: 11, color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}