import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderApp extends StatefulWidget implements PreferredSizeWidget {
  HeaderApp({Key? key})
      : preferredSize = Size.fromHeight(100),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _HeaderAppState createState() => _HeaderAppState();
}

class _HeaderAppState extends State<HeaderApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.black,
      ),
    );
  }
}
