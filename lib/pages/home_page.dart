import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
        backgroundColor: Color.fromARGB(255, 31, 234, 136),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days myapp by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
