import 'package:e_wallet/presentation/dashboard/dashboard_page.dart';
import 'package:e_wallet/presentation/home/login_page.dart';
import 'package:e_wallet/presentation/home/register_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage>? getPages = [
    GetPage(name: LoginPage.TAG, page: () => LoginPage()),
    GetPage(name: RegisterPage.TAG, page: () => RegisterPage()),
    GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
  ];
}
