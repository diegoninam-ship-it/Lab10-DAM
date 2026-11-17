import 'package:flutter/material.dart';
import '../data/plataformas_data.dart';
import '../data/catalogo_data.dart';
import '../routes/app_routes.dart';
import '../theme/app_theme.dart';
import '../widgets/poster_card.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String plataforma = ModalRoute.of(context)!.settings.arguments as String;
    final Color colorAcento = plataformas[plataforma]!['color'] as Color;
    final List<Map<String, dynamic>> categorias = catalogoPorPlataforma[plataforma]!;

    return Scaffold(
      appBar: AppBar(
        title: Text(plataforma, style: AppTheme.tituloFuente.copyWith(color: Colors.white)),
        iconTheme: IconThemeData(color: colorAcento),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          final Map<String, dynamic> categoria = categorias[index];
          final List<Map<String, dynamic>> items = categoria['items'] as List<Map<String, dynamic>>;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  categoria['categoria'] as String,
                  style: AppTheme.tituloFuente.copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: items.length,
                  itemBuilder: (context, i) {
                    final Map<String, dynamic> item = items[i];
                    return PosterCard(
                      item: item,
                      colorAcento: colorAcento,
                      onTap: () => Navigator.pushNamed(context, AppRoutes.detalle, arguments: item),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}