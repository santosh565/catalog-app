import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // elevation: 32,
      child: Container(
        decoration: BoxDecoration(color: Colors.deepPurple),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text('data'),
                accountEmail: Text("data"))
          ],
        ),
      ),
    );
  }
}
