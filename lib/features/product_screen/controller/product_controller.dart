import 'dart:math';

import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/model/items_model.dart';

class ProductController extends GetxController {


  /// random items list generated
  final RxList<Items> _items = List.generate(
    50,
    (index) => Items(
      name: 'Product $index',
      price: Random().nextDouble() * 100,
      id: index,
      isWishList: false.obs,
    ),
  ).obs;


  ///to retrieve all products list
  List<Items> get productList {
    return [..._items];
  }

  /// This will return the products that were added to wish list
  List<Items> get whisListProduct {
    return _items.where((index) => index.isWishList.value == true).toList();
  }

  ///to add item in wishList
  void addItems(int id) {
    final int index = _items.indexWhere((element) => element.id == id);
    _items[index].isWishList.value = true;
  }


  ///to remove item from wishList
  void removeItem(int id) {
    final int index = _items.indexWhere((element) => element.id == id);
    _items[index].isWishList.value = false;
  }


}
