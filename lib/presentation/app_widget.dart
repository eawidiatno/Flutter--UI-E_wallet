import 'package:e_wallet/presentation/home/login_page.dart';
import 'package:e_wallet/presentation/home/splash.dart';
import 'package:e_wallet/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          //untuk menampilkan splash.dart
          if (snapshot.connectionState == ConnectionState.waiting) {
            return splash();
          } else {
            return GetMaterialApp(
              title: 'INDO - Pay',
              getPages: Routes.getPages,
              // theme: ThemeData(
              //   primarySwatch: Colors.blue,
              // ),
              home: LoginPage(),
            );
          }
        });
  }
}
