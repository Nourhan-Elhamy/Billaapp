

import 'package:billaapp/core/utls/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home/models/food_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}
class _FavoriteScreenState extends State<FavoriteScreen> {

  @override
  Widget build(BuildContext context) {
List<FoodModel> favlist =foods.where((foodModel) => foodModel.fav==true).toList();
    return ListView.builder(
      padding: EdgeInsets.all(5),
      itemCount: favlist.length,
        itemBuilder: (context,index){
      return Card(
        color: AppColors.containercolor,
        child: ListTile(
          title: Text(favlist[index].title.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
          subtitle: Text(favlist[index].price.toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.favoriteborder),),
          leading:  Image.asset(favlist[index].image,height: 90,width: 90,),
          trailing: GestureDetector(
            onTap: (){
              setState(() {
                favlist[index].fav=false;
              });

            },
            child: CircleAvatar(
              backgroundColor: AppColors.favoriteborder.withOpacity(0.1),
              child: Icon(Icons.favorite,color: AppColors.favoriteborder,),
            ),
          ),
        ),
      );
    }) ;
  }
}
