import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_with_clean_architecture/di/app_dependencies.dart';
import 'package:getx_with_clean_architecture/routes/app_pages.dart';
import 'package:getx_with_clean_architecture/routes/route_paths.dart';

void main() async{

  ///use to initialized all dependencies before the app runs
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize app level dependencies
  await AppDependencies.dependencies();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: Colors.indigo,
          outline: Colors.indigo,
        ),
      ),
      initialRoute: Routes.homePage,
      getPages: AppPages.pages,
      unknownRoute: AppPages.unknownPage,
    );
  }
}
