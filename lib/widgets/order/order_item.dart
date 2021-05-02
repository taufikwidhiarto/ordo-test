import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ordotest/types/order_dto.dart';
import 'package:ordotest/utils/orders.utils.dart';
import 'package:ordotest/widgets/common/icon_text.dart';
import 'package:ordotest/widgets/common/lazy_image.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key, required this.order}) : super(key: key);

  final OrderDto order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 6,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    child: LazyImage(url: order.userImage),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            order.userName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 16),
                          ),
                          Text(
                            OrderUtils.getOrderStatus(order.status),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconText(
                    icon: Icons.chat_outlined,
                    text: "Chat",
                    boxShape: BoxShape.circle,
                    backgroundColor: Theme.of(context).primaryColor,
                    iconColor: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
          order.alert
              ? Positioned(
                  top: -4,
                  right: -4,
                  child: ClipOval(
                    child: Container(
                      width: 24,
                      height: 24,
                      padding: EdgeInsets.all(6),
                      color: Color(0xffED6825),
                      child: FittedBox(
                        child: Icon(Icons.priority_high, color: Colors.white),
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
