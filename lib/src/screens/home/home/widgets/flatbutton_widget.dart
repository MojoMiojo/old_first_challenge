import 'dart:ui';

import 'package:desafio_padawans_flutter/src/library/utils/colors_util.dart';
import 'package:desafio_padawans_flutter/src/library/utils/global.dart';
import 'package:desafio_padawans_flutter/src/screens/detalhe_evento/detalhe_evento.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlatButtonWidget extends StatefulWidget {
  FlatButtonWidget(
      {this.containerHeight,
      this.containerColor,
      this.profission,
      this.name,
      this.description,
      this.textProfissonStyle});

  final double containerHeight;
  final Color containerColor;
  final String profission;
  final TextStyle textProfissonStyle;
  final String name;
  final String description;

  @override
  FlatButtonWidgetState createState() => FlatButtonWidgetState();
}

class FlatButtonWidgetState extends State<FlatButtonWidget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: widget.containerHeight,
          width: 3.0,
          color: widget.containerColor,
        ),
        Container(
          width: 280.0,
          child: FlatButton(
            onPressed: () {
              frwkNavigator.navigate(DetalheEventoScreen());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.profission,
                      style: widget.textProfissonStyle,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      widget.name,
                      style:
                          TextStyle(color: ColorsUtil.cinzaClaro, fontSize: 18.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  widget.description,
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        InkWell(
          onTap: () {
            setState(() {
              value = !value;
            });
          },
          child: Padding(
           padding: const EdgeInsets.all(2.0),
            child: value
                ? Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/backbox.png',
                ),
                Image.asset(
                  'assets/images/checked.png',
                )
              ],
            )
                : Image.asset(
                    'assets/images/Rectangle.png',
                  ),
          ),
        ),
      ],
    );
  }
}
