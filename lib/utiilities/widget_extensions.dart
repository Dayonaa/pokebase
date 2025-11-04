import 'package:flutter/material.dart';
import 'package:pokebase/widgets/curve_text_painter.dart';

extension StringToTextWidget on String? {
  Text toText({
    FontWeight? fontWeight,
    double? fontSize,
    Color? color,
    TextOverflow? overflow,
    TextAlign? textAlign,
  }) {
    return Text(
      (this ?? "null").contains("null") ? "-" : this ?? "-",
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        overflow: overflow,
      ),
    );
  }

  Widget toCurvedText({
    double radius = 40,
    double fontSize = 12,
    Color color = Colors.black,
  }) {
    return CustomPaint(
      size: Size(radius * 2, radius), // tinggi kira2 radius
      painter: CurvedTextPainter(this ?? "-", radius, fontSize, color),
    );
  }
}

extension CircleWrapper on Widget? {
  Widget circleFilled({
    Color color = Colors.redAccent,
    EdgeInsets padding = const EdgeInsets.all(8),
    BoxShadow? shadow,
  }) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: shadow != null ? [shadow] : [],
      ),
      alignment: Alignment.center,
      child: this,
    );
  }

  Widget circleOutlined({
    double borderWidth = 2,
    Color borderColor = Colors.redAccent,
    Color? backgroundColor,
    EdgeInsets padding = const EdgeInsets.all(8),
  }) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      alignment: Alignment.center,
      child: this,
    );
  }
}

extension SpriteImageExt on String? {
  /// Menampilkan sprite image dari URL, otomatis handle null, error, dan loading
  Widget toImageNetwork({
    double scale = 1.0,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    String? fallbackAsset, // opsional kalau mau fallback ke asset
    Widget? placeholder, // opsional custom loading
    Widget? errorWidget, // opsional custom error
    EdgeInsets? padding,
  }) {
    final url = this;

    if (url == null || url.isEmpty) {
      return fallbackAsset != null
          ? Padding(
              padding: padding ?? EdgeInsets.zero,
              child: Image.asset(
                fallbackAsset,
                scale: scale,
                width: width,
                height: height,
                fit: fit,
              ),
            )
          : (errorWidget ??
                const Icon(Icons.broken_image, color: Colors.grey, size: 48));
    }

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Image.network(
        url,
        scale: scale,
        width: width,
        height: height,
        fit: fit,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return placeholder ??
              Center(
                child: CircularProgressIndicator(
                  value: progress.expectedTotalBytes != null
                      ? progress.cumulativeBytesLoaded /
                            (progress.expectedTotalBytes ?? 1)
                      : null,
                  strokeWidth: 2,
                ),
              );
        },
        errorBuilder: (context, error, stackTrace) =>
            errorWidget ??
            const Icon(Icons.error_outline, color: Colors.redAccent, size: 48),
      ),
    );
  }
}
