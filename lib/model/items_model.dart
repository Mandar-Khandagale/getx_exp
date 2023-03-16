import 'package:get/get.dart';

class Items {
  String name;
  int id;
  double price;
  RxBool isWishList;

  Items({
    required this.name,
    required this.id,
    required this.price,
    required this.isWishList,
  });
}
