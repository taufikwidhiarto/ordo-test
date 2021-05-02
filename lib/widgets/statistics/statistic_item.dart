import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Statisticitem extends StatelessWidget {
  const Statisticitem(
      {Key? key, required this.text, required this.value, this.iconValue})
      : super(key: key);

  final String value;
  final IconData? iconValue;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              margin: EdgeInsets.only(bottom: 8),
              constraints: BoxConstraints(minWidth: 40, maxWidth: 80),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffED6825)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  iconValue != null
                      ? Icon(
                          iconValue,
                          color: Colors.white,
                          size: 8,
                        )
                      : Container()
                ],
              ),
            ),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
