
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/main.dart';
import 'package:myapp/utils/routes.dart';



class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
  
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
 
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

 
 late String username;
  late String password;
  
  @override
  
  Widget build(BuildContext context) {
   
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50.0),
            Text(
              "welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "UserName",
                        prefixIcon: Icon(
                          Icons.people,
                          color: Color.fromARGB(255, 36, 225, 134),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black)),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      username = value;
                      
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock,
                          color: Color.fromARGB(255, 31, 234, 136)),
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value!.length < 6) {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      password = value;
                      
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Material(
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
              color: Color.fromARGB(255, 133, 223, 23),
              child: InkWell(
                 onTap: () => moveToHome(context),

                 child: AnimatedContainer(
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  duration: Duration(seconds: 1),
                  child: changeButton
                      ? Icon(Icons.done,
                          color: Color.fromARGB(255, 249, 249, 249))
                      : Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
