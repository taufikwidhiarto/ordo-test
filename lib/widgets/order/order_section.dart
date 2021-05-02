import 'package:flutter/widgets.dart';
import 'package:ordotest/utils/orders.utils.dart';
import 'package:ordotest/widgets/common/section_show_all.dart';
import 'package:ordotest/widgets/order/order_item.dart';

class OrderSection extends StatelessWidget {
  const OrderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          SectionShowAll(
            title: "Pesanan Terkini",
            onTap: () => print("Lihat semua persanan"),
          ),
          OrderItem(order: OrderUtils.getOrderList()[0]),
          OrderItem(order: OrderUtils.getOrderList()[1])
        ],
      ),
    );
  }
}
