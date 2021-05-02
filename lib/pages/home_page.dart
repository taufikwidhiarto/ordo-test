import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordotest/utils/orders.utils.dart';
import 'package:ordotest/utils/restaurants.utils.dart';
import 'package:ordotest/widgets/common/icon_text.dart';
import 'package:ordotest/widgets/order/order_item.dart';
import 'package:ordotest/widgets/restaurant/restaurant_menu_item.dart';
import 'package:ordotest/widgets/wallet/wallet_section.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            WalletSection(),
            Container(),
            RestaurantMenuItem(
              menu: RestaurantUtils.getRestaurantMenu()[0],
            ),
            OrderItem(order: OrderUtils.getOrderList()[0])
          ],
        ),
      ),
    );
  }
}
