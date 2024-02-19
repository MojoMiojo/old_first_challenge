import 'package:desafio_padawans_flutter/src/library/utils/colors_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPhotos extends StatelessWidget {
  ContainerPhotos({@required this.person});
  final String person;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
            color: ColorsUtil.shadow,
            blurRadius: 60,
            spreadRadius: 0,
            offset: Offset(0, 16),
          )
        ],
      ),
      child: Image.network(person),
    );
  }
}
