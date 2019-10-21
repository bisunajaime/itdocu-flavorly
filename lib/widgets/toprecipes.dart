import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/hero/recipeslist_hero.dart';
import 'package:responsive_flutterapp/models/recipes_model.dart';

class TopRecipes extends StatelessWidget {
  final List<RecipesModel> data;

  TopRecipes({this.data});

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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 220,
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: data[index].user.name,
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RecipesListHero(
                                              data: data,
                                              index: index,
                                            ))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    image: AssetImage(data[index].recipeImg),
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      "${data.length * 25}",
                                      style: TextStyle(
                                        fontSize: deviceText * 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Poppins-Regular",
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(data[index].user.profileImg),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            data[index].recipeName,
                            style: TextStyle(
                              fontSize: deviceText * 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            data[index].user.name,
                            style: TextStyle(
                              fontSize: deviceText * 11,
                              fontFamily: "Poppins-Regular",
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                                width: 1.5,
                              ),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.0,
                              ),
                              child: Text(
                                data[index].cuisineType,
                                style: TextStyle(
                                  fontSize: deviceText * 10,
                                  fontFamily: "Poppins-Regular",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //Text('test')
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
