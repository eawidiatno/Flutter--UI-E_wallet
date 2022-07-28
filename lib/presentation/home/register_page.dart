import 'package:e_wallet/presentation/home/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static final String TAG = '/register_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.red.shade200,
            ],
          )),
          child: ListView(
            children: [
              Container(
                height: 150,
                child: Center(
                  child: Image(
                    image: AssetImage("Logo.png"),
                  ),
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text(
                    "Daftar Akun",
                    style: TextStyle(
                        fontSize: 30, color: Colors.white, fontFamily: 'Unna'),
                  ),
                ),
              ),
              Container(
                height: 80,
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
                      label: Text("Email"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
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
                      label: Text("Username"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.people),
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
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
                        label: Text("Password"),
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
                height: 80,
                // margin: EdgeInsets.all(0),
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
                        label: Text("Password"),
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
                  onPressed: () {
                    // print(
                    //     "Login dengan : Email (${emailC.text}) & Pass (${passC.text})");
                  },
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
                height: 40,
                padding: EdgeInsets.zero,
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Sudah punya akun?",
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, fontFamily: 'Unna'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 100),
                // height: 40,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(LoginPage.TAG),
                  child: Text(
                    "Login",
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
      ),
    );
  }
}
