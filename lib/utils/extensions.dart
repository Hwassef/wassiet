import 'package:flutter/material.dart';
import 'package:wassiet/config/config.dart';

extension TextStyleX on TextStyle {
  /// A method to underline a text with a customizable [distance] between the text
  /// and underline. The [color], [thickness] and [style] can be set
  /// as the decorations of a [TextStyle].
  TextStyle underlined({
    Color color = AppColors.cyanColor,
    double distance = 1,
    double thickness = 4,
    TextDecorationStyle style = TextDecorationStyle.solid,
  }) {
    return copyWith(
      shadows: [
        Shadow(
          color: color,
          offset: Offset(0, -distance),
        )
      ],
      color: Colors.transparent,
      decoration: TextDecoration.underline,
      decorationThickness: thickness,
      decorationColor: this.color,
      decorationStyle: style,
    );
  }
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = Set();
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}
