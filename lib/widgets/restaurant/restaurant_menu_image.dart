import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordotest/utils/formated.utils.dart';
import 'package:ordotest/widgets/common/lazy_image.dart';

class RestaurantMenuImage extends StatelessWidget {
  const RestaurantMenuImage({Key? key, required this.image, this.love})
      : super(key: key);

  final String image;
  final double? love;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: LazyImage(
              url: image,
              radius: 22,
            ),
          ),
          Positioned(
            bottom: -10,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                  color: Color(0xffED6825),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 12,
                  ),
                  Container(width: 4),
                  Text(
                    FormatedUtils.getShortedNumber(love ?? 0),
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
