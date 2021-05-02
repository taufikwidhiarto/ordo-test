import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordotest/widgets/order/order_section.dart';
import 'package:ordotest/widgets/restaurant/restaurant_menu_section.dart';
import 'package:ordotest/widgets/statistics/statistic_section.dart';
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
            StatisticSection(),
            WalletSection(),
            Container(),
            OrderSection(),
            RestaurantMenuSection(),
          ],
        ),
      ),
    );
  }
}
