import 'package:ordotest/types/menu_dto.dart';

class RestaurantUtils {
  static List<MenuDto> getRestaurantMenu() {
    return <MenuDto>[
      MenuDto(
          image: "https://picsum.photos/id/1080/300/300",
          name: "Winger Combo BBQ",
          price: 11000,
          love: 9000),
      MenuDto(
          image: "https://picsum.photos/id/488/300/300",
          name: "Crispy Box",
          price: 11000,
          love: 19000),
      MenuDto(
          image: "https://picsum.photos/id/326/300/300",
          name: "Ice Lemon",
          price: 11000,
          love: 12000000),
      MenuDto(
          image: "https://picsum.photos/id/292/300/300",
          name: "Burger Combo XL",
          price: 11000,
          love: 1000),
      MenuDto(
          image: "https://picsum.photos/id/1060/300/300",
          name: "Burger",
          price: 11000,
          love: 1000),
      MenuDto(
          image: "https://picsum.photos/id/225/300/300",
          name: "Hotdog",
          price: 11000,
          love: 1000)
    ];
  }
}
