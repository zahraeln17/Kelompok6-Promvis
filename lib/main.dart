import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPI Database',
      theme: ThemeData(primaryColor: Colors.black),
      home: Dashboard(),
    );
  }
}

/*
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
        color: Colors.black,
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
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                color: Colors.white,
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
                        hintText: 'naufalfasyaf',
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
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.all(26),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
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
*/

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Dashboard'),
      ),
    );
  }
}

/*class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Welcome Screen',
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        body: Container(
          color: const Color(0xff7c94b6),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
                ),
                //tambah ruang antara image dengan text
                const SizedBox(height: 25.54),
                Text(
                'SELAMAT DATANG',
                 style: TextStyle(
                   fontSize: 28,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ), 
                ),
                Text(
                'Mohon Tunggu',
                  style: TextStyle(
                    fontSize: 17, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                    padding: EdgeInsetes.only(top:5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/