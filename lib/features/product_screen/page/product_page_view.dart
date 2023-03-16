import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/features/product_screen/controller/product_controller.dart';
import 'package:getx_with_clean_architecture/routes/app_routes.dart';
import 'package:getx_with_clean_architecture/routes/route_paths.dart';

class ProductPageView extends StatelessWidget {
  final productController = Get.find<ProductController>();

  ProductPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRoutes.getInstance().getToName(routes: Routes.wishListPage);
        },
        child: const Icon(Icons.filter_list_alt),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: productController.productList.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10.0);
              },
              itemBuilder: (context, index) {
                final product = productController.productList[index];
                return Card(
                  child: ListTile(
                      onTap: () {
                        if (product.isWishList.value == false) {
                          productController.addItems(index);
                        } else {
                          productController.removeItem(index);
                        }
                      },
                      title: Text(product.name),
                      trailing: Obx(() => Icon(product.isWishList.value == false ? Icons.favorite_border : Icons.favorite, color: product.isWishList.value == false ? null : Colors.red,))),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
