import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);
  static final String TAG = '/notification_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IndoPay'),
          backgroundColor: Colors.red,
          elevation: 0,
          actions: [Image.asset("profile.png")],
        ),
        body: Column(
          children: [
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifikasi",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontFamily: 'Unna',
                  ),
                ),
                Image.asset("forest.png"),
              ],
            )),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstIn),
                      image: ExactAssetImage("logo-splash.png"),
                    ),
                  ),
                ),
              ],
            ),
            Divider()
          ],
        ));
  }
}
