
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utls/app_colors.dart';
import '../../models/food_model.dart';

class FoodHomeWidget extends StatefulWidget {
  const FoodHomeWidget({super.key, required this.index});
final int index;

  @override
  State<FoodHomeWidget> createState() => _FoodHomeWidgetState();
}

class _FoodHomeWidgetState extends State<FoodHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
          ,color: Colors.white
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      foods[widget.index].fav=!foods[widget.index].fav;
                    });


                  },
                  child: CircleAvatar(

                      backgroundColor: AppColors.favoriteborder.withOpacity(0.1),
                      child: Icon(
                        foods[widget.index].fav==true?
                            Icons.favorite
                            :
                        Icons.favorite_border,color: AppColors.favoriteborder,)),
                ),
              )
            ],
          )
          ,Image.asset(foods[widget.index].image,height: 60,),
          Text(foods[widget.index].title.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
          Text(foods[widget.index].price.toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.favoriteborder),)


        ],
      )
      ,);
  }
}
