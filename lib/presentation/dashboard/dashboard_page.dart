import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);
  static final String TAG = '/dashboard_page';

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndoPay'),
        backgroundColor: Colors.red,
        elevation: 0,
        actions: [Image.asset("profile.png")],
      ),
      body: Stack(children: [
        Container(
          height: 125,
          width: Get.width,
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image(image: AssetImage("animated.png"))],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            // color: const Color(0xff7c94b6),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstIn),
              image: ExactAssetImage("logo-splash.png"),
            ),
          ),
        ),
        Container(
          height: 70,
          // color: Colors.blue,
          margin: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Costumer Name",
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 20,
                ),
              ),
              Text(
                "Rp. 999.999.999",
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: Get.width,
              height: 90,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 4,
                      offset: Offset(4, 8),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage("menu/top-up.png"),
                  ),
                  Image(
                    image: AssetImage("menu/transfer.png"),
                  ),
                  Image(
                    image: AssetImage("menu/request.png"),
                  ),
                  Image(
                    image: AssetImage("menu/withdraw.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("menu/phone.png"),
                  ),
                  Image(
                    image: AssetImage("menu/game.png"),
                  ),
                  Image(
                    image: AssetImage("menu/pln.png"),
                  ),
                  Image(
                    image: AssetImage("menu/coin.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("menu/invest.png"),
                  ),
                  Image(
                    image: AssetImage("menu/faq.png"),
                  ),
                  Image(
                    image: AssetImage("menu/cs.png"),
                  ),
                  Image(
                    image: AssetImage("menu/menu-lain.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Kemudahan Akses",
                    style: TextStyle(fontFamily: 'Jost', fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // margin: EdgeInsets.only(top: 530),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage("menu/check-in.png"),
                  ),
                  Image(
                    image: AssetImage("menu/tiket-nonton.png"),
                  ),
                  Image(
                    image: AssetImage("menu/paypal.png"),
                  ),
                  Image(
                    image: AssetImage("menu/gojek.png"),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
