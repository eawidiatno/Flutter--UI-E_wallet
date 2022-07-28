import 'package:e_wallet/presentation/dashboard/dashboard_page.dart';
import 'package:e_wallet/presentation/mutasi/mutasi_page.dart';
import 'package:e_wallet/presentation/notification/notification_page.dart';
import 'package:e_wallet/presentation/voucher/voucher_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static final String TAG = '/main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  // int index = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    DashboardPage(),
    NotificationPage(),
    VoucherPage(),
    MutasiPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {},
          tooltip: 'QR Code',
          child: Icon(
            Icons.qr_code_scanner_sharp,
            size: 60,
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          iconSize: 32,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_work_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.keyboard_double_arrow_up_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined), label: ""),
          ],
        ),
      ),
    );
  }
}
