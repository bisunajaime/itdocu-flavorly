import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/models/recipes_model.dart';

class FeaturedRecipes extends StatelessWidget {
  final List<RecipesModel> data;

  FeaturedRecipes({this.data});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceText = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: 200,
      width: deviceWidth,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            var rng = new Random();
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 5.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: deviceHeight / 6,
                      child: Container(
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomRight,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(data[index].recipeImg),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  width: 55,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.0,
                                      vertical: 2.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          '${rng.nextInt(60)}',
                                          style: TextStyle(
                                            fontFamily: "Poppins-Regular",
                                            fontSize: deviceText * 12,
                                          ),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ],
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
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(data[index].user.profileImg),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data[index].user.name.split(" ")[0],
                            style: TextStyle(
                              fontSize: deviceText * 14,
                              fontFamily: "Poppins-Regular",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.0,
                                vertical: 1.0,
                              ),
                              child: Text(
                                data[index].cuisineType,
                                style: TextStyle(
                                  fontSize: deviceText * 10,
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
