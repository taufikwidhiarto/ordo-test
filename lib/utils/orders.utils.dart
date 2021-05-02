import 'package:ordotest/types/order_dto.dart';

class OrderUtils {
  static List<OrderDto> getOrderList() {
    return <OrderDto>[
      OrderDto(
          userImage: "https://picsum.photos/id/1005/300/300",
          userName: "Gibran Mulyana",
          status: OrderStatusEnum.pending,
          alert: true),
      OrderDto(
          userImage: "https://picsum.photos/id/1011/300/300",
          userName: "Gibran Mulyana",
          status: OrderStatusEnum.ongoing,
          alert: true),
      OrderDto(
          userImage: "https://picsum.photos/id/1010/300/300",
          userName: "Mattew Wiebe",
          status: OrderStatusEnum.pending,
          alert: true),
      OrderDto(
          userImage: "https://picsum.photos/id/1025/300/300",
          userName: "Samantha Sophia",
          status: OrderStatusEnum.pending,
          alert: true),
    ];
  }

  static String getOrderStatus(OrderStatusEnum status) {
    switch (status) {
      case OrderStatusEnum.pending:
        return "Menunggu Persetujuan Pesanan";
      case OrderStatusEnum.ongoing:
        return "Pesanan sedang disiapkan";
      case OrderStatusEnum.completed:
        return "Pesanan Selesai";
      default:
        return "tidak ada status";
    }
  }
}
