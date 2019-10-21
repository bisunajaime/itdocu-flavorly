import 'package:flutter/material.dart';
import 'package:responsive_flutterapp/hero/friend_hero.dart';
import 'package:responsive_flutterapp/models/recipes_model.dart';

class FriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceText = MediaQuery.of(context).textScaleFactor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Text(
            'Following',
            style: TextStyle(
              fontSize: deviceText * 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins-Regular",
            ),
          ),
        ),
        Container(
          height: deviceHeight / 7,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: profiles.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 2.0,
                ),
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: profiles[index].user.id,
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FriendHero(
                              data: [profiles[index]],
                            ),
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(profiles[index].user.profileImg),
                          radius: 35,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          profiles[index].user.name.split(" ")[0],
                          style: TextStyle(
                            fontSize: deviceText * 10,
                            fontFamily: "Poppins-Regular",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
