import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/features/error_page/error_page.dart';
import 'package:getx_with_clean_architecture/features/product_screen/page/product_page_view.dart';
import 'package:getx_with_clean_architecture/features/product_screen/page/wishList_page_view.dart';
import 'package:getx_with_clean_architecture/features/screens/home_screen.dart';
import 'package:getx_with_clean_architecture/features/screens/second_screen.dart';
import 'package:getx_with_clean_architecture/features/screens/third_screen.dart';

import 'route_paths.dart';


class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: Routes.homePage,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.secondScreen,
      page: () => const SecondScreen(),
    ),
    GetPage(
      name: Routes.thirdScreen,
      page: () => const ThirdScreen(),
    ),
    GetPage(
      name: Routes.productPage,
      page: () => ProductPageView(),
    ),
    GetPage(
      name: Routes.wishListPage,
      page: () => WishListPageView(),
    ),
  ];

  static final unknownPage = GetPage(
      name: Routes.errorPage,
      page: () => const ErrorPage(),
    );

}
