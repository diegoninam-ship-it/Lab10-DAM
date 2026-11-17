# 🎬 Lab10-DAM — Catálogo de Streaming

![Flutter](https://img.shields.io/badge/Flutter-3.35.3-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.9.2-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Material](https://img.shields.io/badge/UI-Material%203-757575?style=for-the-badge&logo=materialdesign&logoColor=white)
![Status](https://img.shields.io/badge/Estado-Funcional-success?style=for-the-badge)

> Una app de catálogo de streaming inspirada en **Netflix**, **Prime Video**, **Disney+** y **Max**, con una sola pantalla de catálogo reutilizable para las 4 plataformas, pósters cargados desde la nube y tres tipografías con roles bien definidos.

---

## ✨ Qué hace

Cada plataforma mantiene su propia identidad visual — color de acento, logo — sobre un tema global oscuro compartido. El contenido se organiza en filas horizontales por categoría (*Populares*, *Continuar viendo*), igual que en las apps reales, y al tocar un póster se abre el detalle con calificación, año, duración y descripción.

## 🧩 Capacidades demostradas

| Capacidad | Cómo se aplica |
|---|---|
| 🗂️ **Listas y Mapas** | `Map<String, List<Map<String, dynamic>>>` anidado: plataforma → categorías → contenidos |
| 📜 **ListViews** | `ListView` vertical de categorías con `ListView` horizontal de pósters anidado dentro |
| 🧷 **ListTiles** | `ListTile` para las 4 plataformas en Home |
| 🧭 **Rutas** | `CatalogoScreen` y `DetalleScreen` reciben datos por **argumento de ruta**, no por rutas separadas |
| 🎨 **Tema Global** | `ThemeData` oscuro compartido + color de acento inyectado por plataforma |
| 🃏 **Cards** | Cada plataforma y cada póster vive dentro de una `Card` |

## 🖋️ Tres tipografías, tres roles

| Fuente | Uso |
|---|---|
| `Poppins` | Títulos y nombres de categoría |
| `Inter` | Cuerpo de texto y descripciones |
| `Oswald` | Datos puntuales — calificación, año, duración |

## 🖼️ Imágenes: local + nube

- **`Image.asset`** → logos de plataforma, empaquetados en `assets/logos/`
- **`Image.network`** → pósters de contenido, cargados en tiempo real con `loadingBuilder` y `errorBuilder`

## 📂 Estructura del proyecto

```
lib/
├── main.dart
├── theme/
│   └── app_theme.dart
├── data/
│   ├── plataformas_data.dart
│   └── catalogo_data.dart
├── routes/
│   └── app_routes.dart
├── widgets/
│   └── poster_card.dart
└── screens/
    ├── home_screen.dart
    ├── catalogo_screen.dart
    └── detalle_screen.dart
```

## ▶️ Cómo ejecutar

```bash
git clone https://github.com/diegoninam-ship-it/Lab10-DAM.git
cd Lab10-DAM
flutter pub get
flutter run -d chrome
```

---

<div align="center">

**Diego Nina Malqui**
Diseño y Desarrollo de Software — Tecsup
Curso: Aplicaciones Móviles Multiplataforma

</div>