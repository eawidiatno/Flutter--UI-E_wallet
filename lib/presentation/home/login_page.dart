import 'package:e_wallet/presentation/dashboard/dashboard_page.dart';
import 'package:e_wallet/presentation/home/main_page.dart';
import 'package:e_wallet/presentation/home/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final String TAG = '/login_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red,
            Colors.red.shade200,
          ],
        )),
        child: ListView(
          children: [
            Container(
              height: 200,
              child: Center(
                child: Image(
                  image: AssetImage("logo-splash.png"),
                ),
              ),
            ),
            Container(
              width: 50,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30, color: Colors.white, fontFamily: 'Unna'),
                ),
              ),
            ),
            Container(
              height: 90,
              padding: EdgeInsets.all(20),
              child: Center(
                child: TextField(
                  // controller: emailC,
                  autocorrect: false,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.pink[100],
                    label: Text(
                      "Email",
                      style: TextStyle(
                          color: Color(0xFF686868), fontFamily: 'Unna'),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
            ),
            Container(
              height: 90,
              padding: EdgeInsets.all(20),
              child: Center(
                child: TextField(
                  // controller: passC,
                  autocorrect: false,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.pink[100],
                      label: Text(
                        "Password",
                        style: TextStyle(
                            color: Color(0xFF686868), fontFamily: 'Unna'),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.key_outlined),
                      suffixIcon: IconButton(
                        onPressed: () {
                          // if (isHidden == true) {
                          //   isHidden = false;
                          // } else {
                          //   isHidden = true;
                          // }
                          // setState(() {});
                        },
                        icon: Icon(Icons.remove_red_eye),
                      )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 10,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(MainPage.TAG),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 15, color: Colors.white, fontFamily: 'Unna'),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFD00303),
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Container(
              height: 25,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Center(
                child: Text(
                  "Kebijakan & ketentuan",
                  style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFF00278A),
                      fontFamily: 'Unna'),
                ),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "Belum punya akun? Daftar yuk!",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: 'Unna'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              // height: 40,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(RegisterPage.TAG),
                child: Text(
                  "Daftar",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: 'Unna'),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFD00303),
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
