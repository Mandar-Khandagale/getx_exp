import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/features/product_screen/controller/product_controller.dart';
import 'package:getx_with_clean_architecture/routes/app_routes.dart';

class AppDependencies {

  /// inject dependencies
  static Future<void> dependencies() async {

    /// app routes instance
    Get.put(AppRoutes());

    ///product controller
    Get.put(ProductController());

  }



  }