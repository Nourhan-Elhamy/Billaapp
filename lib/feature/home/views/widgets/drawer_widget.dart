import 'package:billaapp/core/utls/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 30,),
        SizedBox(
          height: 200,
            child: Image.asset(AppImages.profile,)),
        SizedBox(height: 30,),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
            Text("Account"),
          ],
        ),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            Text("Settings"),
          ],
        ),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
            Text("logout"),
          ],
        ),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
            Text("Contact Us"),
          ],
        ),
      ],
    );
  }
}
