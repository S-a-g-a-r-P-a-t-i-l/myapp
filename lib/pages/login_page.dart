import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/login_image.png',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Text(
            "welcome $name",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "UserName"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              setState(() {
                changeButton = true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoutes);
            },
            child: AnimatedContainer(
              width: changeButton ? 50 : 150,
              height: 50,
              alignment: Alignment.center,
              
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  color: Colors.deepPurple),
              duration: Duration(seconds: 1),
              child: changeButton
                  ? Icon(Icons.done, color: Colors.white)
                  : Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
            ),
          )
          // ElevatedButton(
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
          //   },
          // )
        ],
      ),
    ));
  }
}
