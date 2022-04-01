import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'LoginApp',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 60,),
                Image.asset('assets/Logo_upi.png'),
                SizedBox(height:30 ,),
                Text('Selamat Datang',style: TextStyle(fontSize: 30, color:Colors.blueGrey,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 60.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(fontSize: 15),
                filled: true,
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 15),
                filled: true,
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  disabledColor: Colors.blueGrey,
                  child: RaisedButton(
                    onPressed: null,
                    child: Text('Login',style: TextStyle(fontSize: 20,color:Colors.white),),
                  )
                )
              ],
            )
          ],
        ),
        ),
    );
  }
}