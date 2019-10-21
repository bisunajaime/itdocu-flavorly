import 'package:responsive_flutterapp/models/userrecipes_model.dart';
import 'package:responsive_flutterapp/models/users_model.dart';

class RecipesModel {
  final Users user;
  final String recipeName;
  final String recipeDesc;
  final String recipeImg;
  final List<String> ingredients;
  final List<UserRecipes> userRecipes;
  final String cuisineType;
  final String calories;

  RecipesModel({
    this.user,
    this.recipeName,
    this.recipeDesc,
    this.recipeImg,
    this.ingredients,
    this.userRecipes,
    this.cuisineType,
    this.calories,
  });
}

final Users karlo = Users(
  id: 1,
  name: "Karlo Angelo",
  profileImg: "assets/images/Angelo.png",
  occupation: "Student",
  isActive: false,
);

final Users travis = Users(
  id: 2,
  name: "Travis Munoz",
  profileImg: "assets/images/Munoz.jpg",
  occupation: "Student",
  isActive: true,
);

final Users reignald = Users(
  id: 3,
  name: "Reignald Tolentino",
  profileImg: "assets/images/Tolentino.jpg",
  occupation: "Student",
  isActive: true,
);

final Users jaime = Users(
  id: 4,
  name: "Jaime Bisuna",
  profileImg: "assets/images/Bisuna.jpg",
  occupation: "Student",
  isActive: false,
);

final Users kenneth = Users(
  id: 5,
  name: "Kenneth Eugenio",
  profileImg: "assets/images/Eugenio.jpg",
  occupation: "Student",
  isActive: true,
);

final Users julius = Users(
  id: 6,
  name: "Julius Yung",
  profileImg: "assets/images/Yung.jpg",
  occupation: "Student",
  isActive: true,
);

List<Users> friends = [karlo, travis, reignald, jaime, kenneth, julius];

final UserRecipes karlo0 = UserRecipes(
    id: 1,
    recipeName: "Harissa and fennel yoghurt",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad1.jpg",
    cuisine: "Italian",
    calories: "180",
    list: [
      "Test World",
      "Test World",
    ]);

final UserRecipes karlo1 = UserRecipes(
    id: 2,
    recipeName: "Roast daikon",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad2.jpg",
    cuisine: "German",
    calories: "210",
    list: [
      "Hello World",
      "Hello World",
    ]);

final UserRecipes karlo2 = UserRecipes(
    id: 3,
    recipeName: "Borscht and cheese salad",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad3.jpg",
    cuisine: "French",
    calories: "200",
    list: [
      "Hello World",
    ]);

final UserRecipes karlo3 = UserRecipes(
    id: 4,
    recipeName: "Juniper berry and date salad",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad4.jpg",
    cuisine: "French",
    calories: "150",
    list: [
      "Hello World",
    ]);

final UserRecipes karlo4 = UserRecipes(
    id: 5,
    recipeName: "Cardamom and mint salad",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad5.jpg",
    cuisine: "French",
    calories: "160",
    list: [
      "Hello World",
    ]);

List<UserRecipes> karlosRecipes = [
  karlo0,
  karlo1,
  karlo2,
  karlo3,
  karlo4,
];

final UserRecipes travis0 = UserRecipes(
    id: 1,
    recipeName: "The Travis Special",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad2.jpg",
    cuisine: "Italian",
    calories: "210",
    list: [
      "Hello World",
    ]);

final UserRecipes travis1 = UserRecipes(
    id: 2,
    recipeName: "The Travis1 Special",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad3.jpg",
    cuisine: "German",
    calories: "180",
    list: [
      "Hello World",
    ]);

final UserRecipes travis2 = UserRecipes(
    id: 3,
    recipeName: "The Travis2 Special",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad4.jpg",
    cuisine: "French",
    calories: "200",
    list: [
      "Hello World",
    ]);

final UserRecipes travis3 = UserRecipes(
    id: 4,
    recipeName: "The Travis3 Special",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad5.jpg",
    cuisine: "French",
    calories: "200",
    list: [
      "Hello World",
    ]);

final UserRecipes travis4 = UserRecipes(
    id: 5,
    recipeName: "The Travis4 Special",
    recipeDesc: "A recipe found on the internet",
    recipeImg: "assets/images/salad5.jpg",
    cuisine: "French",
    calories: "200",
    list: [
      "Hello World",
    ]);

List<UserRecipes> travisRecipes = [
  travis0,
  travis1,
  travis2,
  travis3,
];

List<RecipesModel> profiles = [
  RecipesModel(
    user: karlo,
    recipeName: "The Karlo Special",
    recipeDesc: "A recipe found on the internet.",
    recipeImg: "assets/images/salad.jpg",
    userRecipes: karlosRecipes,
    cuisineType: "Italian",
    calories: "250",
  ),
  RecipesModel(
    user: travis,
    recipeName: "The Travis Special",
    recipeDesc: "A recipe found on the internet.",
    recipeImg: "assets/images/salad1.jpg",
    userRecipes: travisRecipes,
    cuisineType: "Chinese",
    calories: "240",
  ),
  RecipesModel(
    user: reignald,
    recipeName: "The Reignald Special",
    recipeDesc: "A recipe found on the internet.",
    recipeImg: "assets/images/salad2.jpg",
    userRecipes: karlosRecipes,
    cuisineType: "Arab",
    calories: "230",
  ),
  RecipesModel(
    user: jaime,
    recipeName: "The Jaime Special",
    recipeDesc: "A recipe found on the internet.",
    recipeImg: "assets/images/salad3.jpg",
    userRecipes: karlosRecipes,
    ingredients: [
      "Bacon",
      "Bacon",
      "Bacon",
    ],
    cuisineType: "American",
    calories: "210",
  ),
  RecipesModel(
    user: kenneth,
    recipeName: "The Kenneth Special",
    recipeDesc: "A recipe found on the internet.",
    recipeImg: "assets/images/salad4.jpg",
    userRecipes: karlosRecipes,
    cuisineType: "Taiwanese",
    calories: "220",
  ),
  RecipesModel(
    user: julius,
    recipeName: "The Julius Special",
    recipeDesc: "A recipe found on the internet.",
    recipeImg: "assets/images/salad5.jpg",
    userRecipes: travisRecipes,
    cuisineType: "Chinese",
    calories: "200",
  ),
];
