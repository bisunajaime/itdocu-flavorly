import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/models/recipes_model.dart';
import 'package:responsive_flutterapp/widgets/featuredrecipes.dart';
import 'package:responsive_flutterapp/widgets/newrecipes.dart';
import 'package:responsive_flutterapp/widgets/toprecipes.dart';

class RecipesList extends StatelessWidget {
  final List<RecipesModel> data;

  RecipesList({this.data});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceText = MediaQuery.of(context).textScaleFactor;
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5.0,
              left: 5.0,
              right: 5.0,
              top: 5.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: deviceHeight / 4,
                width: deviceWidth,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/salad5.jpg",
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.green,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 3.0,
                            ),
                            child: Text(
                              'Recipe of the Day',
                              style: TextStyle(
                                fontSize: deviceText * 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Text(
              'Bookmarked Recipes',
              style: TextStyle(
                fontSize: deviceText * 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins-Regular",
              ),
            ),
          ),
          TopRecipes(
            data: data,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Text(
              'Featured Recipes',
              style: TextStyle(
                fontSize: deviceText * 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins-Regular",
              ),
            ),
          ),
          FeaturedRecipes(
            data: data.reversed.toList(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Text(
              'New Recipes',
              style: TextStyle(
                fontSize: deviceText * 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins-Regular",
              ),
            ),
          ),
          NewRecipes(
            data: data,
          ),
        ],
      ),
    );
  }
}
