import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/Contactus.dart';
import '../pages/home_page.dart';
import '../pages/profile.dart';
import '../pages/products.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://res.cloudinary.com/carzone/image/upload/v1635089805/avatars/mge1wjjzsq65cstqohgx.jpg";
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Sagar Patil"),
                accountEmail: Text("sagarpatil1917118@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
               onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new HomePage()));
              }),
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
               onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Product()));
              }),
              leading: Icon(CupertinoIcons.cube_box, color: Colors.white),
              title: Text(
                "Products",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
               onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Profile()));
              }),
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: (() {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ContactUs()));
              }),
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Contact Us",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
