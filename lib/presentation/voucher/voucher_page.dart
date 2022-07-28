import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({Key? key}) : super(key: key);
  static final String TAG = '/voucher_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndoPay'),
        backgroundColor: Colors.red,
        elevation: 0,
        actions: [Image.asset("profile.png")],
      ),
      body: Column(children: [
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Promo Spesial",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontFamily: 'Unna',
              ),
            ),
          ],
        )),
        Divider()
      ]),
    );
  }
}
