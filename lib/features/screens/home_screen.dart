import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/model/user.dart';
import 'package:getx_with_clean_architecture/routes/app_routes.dart';
import 'package:getx_with_clean_architecture/routes/route_paths.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic data;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                ///it's go to next screen and adds in route stack
                ///in arguments we can any dynamic values while routing
                AppRoutes.getInstance().getToName(
                  routes: Routes.secondScreen,
                  arguments: User(name: "Mandar", id: 1),
                );

                // var data = await AppRoutes.getInstance().getToName(
                //   routes: Routes.secondScreen
                // );
                // debugPrint("Data from :: $data");

                ///passing values through dynamic links
                //Get.toNamed("/secondScreen?id=354&name=Enzo");
              },
              child: const Text("Go to next screen"),
            ),
            const SizedBox(height: 20.0),
            Text(data ?? "-"),
            ElevatedButton(
              onPressed: () async {
                AppRoutes.getInstance().getToName(routes: Routes.productPage);
              },
              child: const Text("Go to Product Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
