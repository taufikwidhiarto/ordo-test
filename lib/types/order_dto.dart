enum OrderStatusEnum { pending, ongoing, completed }

class OrderDto {
  String userImage;
  String userName;
  OrderStatusEnum status;
  bool alert;

  OrderDto(
      {required this.userImage,
      required this.userName,
      required this.status,
      required this.alert});
}
