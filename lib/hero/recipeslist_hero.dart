import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/models/recipes_model.dart';

class RecipesListHero extends StatelessWidget {
  final List<RecipesModel> data;
  final int index;

  RecipesListHero({this.index, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 30.0,
          left: 10.0,
          right: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: data[index].user.name,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(data[index].recipeImg),
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  data[index].recipeName,
                  style: TextStyle(
                    fontFamily: "Poppins-Regular",
                    fontSize: MediaQuery.of(context).textScaleFactor * 25,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 3.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          '150',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Text(
              'Ingredients',
              style: TextStyle(
                fontSize: MediaQuery.of(context).textScaleFactor * 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
