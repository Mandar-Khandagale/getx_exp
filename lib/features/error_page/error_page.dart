import 'package:flutter/material.dart';
import 'package:getx_with_clean_architecture/routes/app_routes.dart';
import 'package:getx_with_clean_architecture/routes/route_paths.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Page"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Page Not found"),
            ElevatedButton(
              onPressed: () {
                AppRoutes.getInstance().getOffAllName(routes: Routes.homePage);
              },
              child: const Text("Back to Home Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
