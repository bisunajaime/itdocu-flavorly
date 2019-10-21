import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/widgets/friendslist.dart';
import 'package:responsive_flutterapp/widgets/recipeslist.dart';
import '../models/recipes_model.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight,
      width: deviceWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FriendsList(),
          Expanded(
            child: RecipesList(
              data: profiles,
            ),
          )
        ],
      ),
    );
  }
}
