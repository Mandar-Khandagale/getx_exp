import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/features/product_screen/controller/product_controller.dart';

class WishListPageView extends StatelessWidget {
  final productController = Get.find<ProductController>();

  WishListPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WishList Page"),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(10.0),
          child: productController.whisListProduct.isEmpty
              ? const Center(child: Text("No Items in wishList"))
              : ListView.separated(
                  shrinkWrap: true,
                  itemCount: productController.whisListProduct.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10.0);
                  },
                  itemBuilder: (context, index) {
                    final product = productController.whisListProduct[index];
                    return Card(
                      child: ListTile(
                          onTap: () {
                            productController.removeItem(product.id);
                          },
                          title: Text(product.name),
                          trailing:  Icon(
                                product.isWishList.value == false
                                    ? Icons.favorite_border
                                    : Icons.favorite,
                                color: product.isWishList.value == false
                                    ? null
                                    : Colors.red,
                              )),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
