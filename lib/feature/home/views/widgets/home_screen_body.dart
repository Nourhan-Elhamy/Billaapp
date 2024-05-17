
import 'package:billaapp/core/utls/app_images.dart';
import 'package:billaapp/core/utls/app_colors.dart';


import 'package:billaapp/feature/home/views/widgets/banner_widget.dart';
import 'package:billaapp/feature/home/views/widgets/food_home_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/food_model.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {



  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomBanner(),
          ),

          SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 12,mainAxisSpacing: 12),
            itemCount: foods.length ,
            itemBuilder: (context,index){
            return FoodHomeWidget(index: index);
            })
        ],
      )
    );
  }
}
