

import 'package:billaapp/core/utls/app_colors.dart';
import 'package:billaapp/core/utls/app_images.dart';
import 'package:billaapp/feature/home/views/widgets/drawer_widget.dart';

import 'package:billaapp/feature/home/views/widgets/home_screen_body.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../favorite/views/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  List <Widget> screens =[
    HomeScreenBody(),
    FavoriteScreen()
  ];
  int currentindex =0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldcolor,
      appBar: AppBar(

        title: Image.asset(AppImages.bellalogo,height:
          MediaQuery.of(context).size.height*0.04
          ,),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (bottomIndex){

          setState(() {
            currentindex=bottomIndex;
          });
        },
        currentIndex: currentindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              label: "favorite"),
        ],
      ),
      body: screens[currentindex]
    );
  }
}
