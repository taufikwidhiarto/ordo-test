import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordotest/types/menu_dto.dart';
import 'package:ordotest/utils/formated.utils.dart';
import 'package:ordotest/widgets/common/icon_text.dart';
import 'package:ordotest/widgets/restaurant/restaurant_menu_image.dart';

class RestaurantMenuItem extends StatelessWidget {
  const RestaurantMenuItem({
    Key? key,
    required this.menu,
  }) : super(key: key);

  final MenuDto menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 6,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Row(
            children: [
              Container(
                width: 68,
                height: 68,
                child: RestaurantMenuImage(image: menu.image, love: menu.love),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menu.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      Text(
                        FormatedUtils.getCurrency(menu.price),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              IconText(
                icon: Icons.border_color,
                text: "Edit",
                boxShape: BoxShape.circle,
                backgroundColor: Theme.of(context).primaryColor,
                iconColor: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
