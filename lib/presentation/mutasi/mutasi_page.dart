import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MutasiPage extends StatelessWidget {
  const MutasiPage({Key? key}) : super(key: key);
  static final String TAG = '/mutasi_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndoPay'),
        backgroundColor: Colors.red,
        elevation: 0,
        actions: [Image.asset("profile.png")],
      ),
      body: Text("MUtasi"),
    );
  }
}
