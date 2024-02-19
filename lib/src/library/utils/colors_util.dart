import 'dart:ui';

import 'package:flutter/material.dart';

class ColorsUtil {
  static final white = Colors.white;

  static final roxo = getColorByHex('#7041EE');
  static final roxoClaro = getColorByHex('#F0ECFC');

  static final vermelho = getColorByHex('#FA4F3B');
  static final verde = getColorByHex('#1ECD8C');
  static final amarelo = getColorByHex('#FECD56');

  static final cinzaEscuro = getColorByHex('#2C2929');
  static final cinzaClaro = getColorByHex('#AAA9AB');

  static final background = getColorByHex('#F8FBFD');
  static final shadow = getColorByHex('#4E4F72').withOpacity(0.08);

  static Color getColorByHex(String hex) {
    return Color(int.parse("0xFF${hex.replaceAll('#', '')}"));
  }
}
