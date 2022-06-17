import 'package:flutter/material.dart';
import 'package:flutter_aplikasiupi/route/app_pages.dart';
import 'package:flutter_aplikasiupi/shared/themes.dart';
import 'package:flutter_aplikasiupi/shared/widget/appbar_custom.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: double.infinity,
        color: kDeepBlue,
        height: 80,
        child: Center(
          child: Text(
            "Don't have account ? Sign Up!",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                color: kDeepBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/LOGO_UPI.png'),
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Teks',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Username', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Input username',
                        hintStyle: TextStyle(color: Color(0xFF505051)),
                        filled: true,
                        fillColor: Color(0xFF1C1D1E),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFF1C1D1E)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: _isSecure,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              if (_isSecure) {
                                setState(() {
                                  _isSecure = false;
                                });
                              } else {
                                setState(() {
                                  _isSecure = true;
                                });
                              }
                            },
                            child: Icon(
                                _isSecure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xFF505051))),
                        hintText: 'Input Password Here!',
                        hintStyle: TextStyle(color: Color(0xFF505051)),
                        filled: true,
                        fillColor: Color(0xFF1C1D1E),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFF1C1D1E)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFF1C1D1E)),
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffF05454),
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          child: const Text('Login',
                              style: TextStyle(color: Color(0xff000000))),
                          onPressed: () {
                            Get.toNamed(AppPages.DASHBOARD);
                          },
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
