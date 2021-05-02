import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconText extends StatelessWidget {
  const IconText(
      {Key? key,
      required this.icon,
      required this.text,
      this.backgroundColor,
      this.iconColor,
      this.boxShape,
      this.size,
      this.textMargin,
      this.textSize = 12,
      this.iconPadding,
      this.borderRadius,
      this.margin})
      : super(key: key);

  final double? size;
  final Color? backgroundColor;
  final BoxShape? boxShape;
  final BorderRadiusGeometry? borderRadius;

  final IconData icon;
  final Color? iconColor;
  final EdgeInsetsGeometry? iconPadding;

  final String text;
  final EdgeInsetsGeometry? textMargin;
  final double? textSize;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    var iconView;
    if (boxShape == BoxShape.circle) {
      iconView = ClipOval(
        child: Container(
          padding: iconPadding ?? EdgeInsets.all(6),
          color: backgroundColor,
          child: FittedBox(
            child: Icon(icon, color: iconColor),
          ),
        ),
      );
    } else {
      iconView = Container(
          padding: iconPadding ?? EdgeInsets.all(6),
          decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 1,
                    color: Colors.black.withOpacity(0.3))
              ],
              color: backgroundColor),
          child: FittedBox(
            child: Icon(icon, color: iconColor),
          ));
    }

    return Container(
      margin: margin,
      child: Column(
        children: [
          Container(
            width: size,
            height: size,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: iconView,
            ),
          ),
          Container(
            margin: textMargin ?? EdgeInsets.only(top: 4),
            child: Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: backgroundColor, fontSize: textSize)),
          )
        ],
      ),
    );
  }
}
