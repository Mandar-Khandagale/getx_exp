import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/features/screens/third_screen.dart';
import 'package:getx_with_clean_architecture/model/user.dart';
import 'package:getx_with_clean_architecture/routes/app_routes.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ///to get the values passed through arguments
    User list = Get.arguments;

    ///getting values from dynamic links
    // var id = Get.parameters['id'];
    // var name = Get.parameters['name'];
    // var device = Get.parameters['device'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Text("$name :: $id :: $device"),

            Text("${list.id} :: ${list.name}"),

            ElevatedButton(
              onPressed: () {

                ///to send data to previous screen
                AppRoutes.getInstance().getBack(results: "Data from 2nd Screen");

              },
              child: const Text("Back to home screen"),
            ),
            ElevatedButton(
              onPressed: () {

                ///it's go to next screen and remove last screen from stack
                //Get.off(() => const ThirdScreen());

                ///it's go to next screen and remove all screen from stack
                Get.offAll(() => const ThirdScreen());

              },
              child: const Text("Third Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
