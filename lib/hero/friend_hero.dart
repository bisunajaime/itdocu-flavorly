import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/models/recipes_model.dart';

class FriendHero extends StatefulWidget {
  List<RecipesModel> data;

  FriendHero({this.data});

  @override
  _FriendHeroState createState() => _FriendHeroState();
}

class _FriendHeroState extends State<FriendHero> {
  bool isFollowing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 5.0,
        ),
        child: Container(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Hero(
                            tag: widget.data[index].user.id,
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  widget.data[index].user.profileImg,
                                ),
                                radius: 80,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.data[index].user.name
                                    .replaceAll(" ", "\n"),
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                              Text(
                                widget.data[index].user.occupation,
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.textScaleFactorOf(context) *
                                          15,
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFollowing = !isFollowing;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                    vertical: 2.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isFollowing
                                        ? Colors.green
                                        : Colors.transparent,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    isFollowing ? 'Following' : 'Follow',
                                    style: TextStyle(
                                      color: isFollowing
                                          ? Colors.white
                                          : Colors.green,
                                      fontWeight: FontWeight.bold,
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
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '${widget.data[index].user.name}\'s Recipes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins-Regular",
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.55,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: widget.data[index].userRecipes.length,
                      itemBuilder: (BuildContext context, int i) {
                        final recipeImg =
                            widget.data[index].userRecipes[i].recipeImg;
                        final recipeDesc =
                            widget.data[index].userRecipes[i].recipeDesc;
                        final recipeName =
                            widget.data[index].userRecipes[i].recipeName;
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 150,
                                width: 190,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(recipeImg),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: 140,
                                    child: Text(
                                      recipeName,
                                      style: TextStyle(
                                        fontSize: MediaQuery.textScaleFactorOf(
                                                context) *
                                            15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      recipeDesc,
                                      style: TextStyle(
                                        fontSize: MediaQuery.textScaleFactorOf(
                                                context) *
                                            15,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.0,
                                      vertical: 1.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      widget.data[index].userRecipes[index]
                                          .cuisine,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.0,
                                  ),
                                  // Container(
                                  //   padding: EdgeInsets.symmetric(
                                  //     horizontal: 5.0,
                                  //   ),
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.green,
                                  //       borderRadius: BorderRadius.circular(10),
                                  //       border: Border.all(
                                  //         color: Colors.green,
                                  //         width: 1,
                                  //       )),
                                  //   child: Text(
                                  //     "${widget.data[index].userRecipes[i].calories} cal.",
                                  //     style: TextStyle(
                                  //       color: Colors.white,
                                  //       fontWeight: FontWeight.bold,
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
