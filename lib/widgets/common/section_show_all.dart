import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SectionShowAll extends StatelessWidget {
  const SectionShowAll(
      {Key? key, this.icon, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final IconData? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 18, right: 18, bottom: 8),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).primaryColor),
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  width: 28,
                  height: 28,
                  padding: EdgeInsets.all(6),
                  color: Color(0xffED6825),
                  child: FittedBox(
                    child: Icon(Icons.archive, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )),
              Row(
                children: [
                  Text(
                    "Lihat semua",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 16,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
