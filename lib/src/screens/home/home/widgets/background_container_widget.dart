import 'package:flutter/material.dart';

class BackgroundContainerWidget extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  BackgroundContainerWidget({
    @required this.backgroundColor,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return this._buildContainer();
  }

  _buildContainer() {
    return Container(
      child: this.child,
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
    );
  }
}
