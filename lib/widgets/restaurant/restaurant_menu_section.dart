import 'package:flutter/widgets.dart';
import 'package:ordotest/utils/restaurants.utils.dart';
import 'package:ordotest/widgets/common/section_show_all.dart';
import 'package:ordotest/widgets/restaurant/restaurant_menu_item.dart';

class RestaurantMenuSection extends StatelessWidget {
  const RestaurantMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          SectionShowAll(
            title: "Menu Restoran",
            onTap: () => print("Lihat semua persanan"),
          ),
          RestaurantMenuItem(
            menu: RestaurantUtils.getRestaurantMenu()[0],
          ),
          RestaurantMenuItem(
            menu: RestaurantUtils.getRestaurantMenu()[1],
          ),
          RestaurantMenuItem(
            menu: RestaurantUtils.getRestaurantMenu()[2],
          ),
        ],
      ),
    );
  }
}
