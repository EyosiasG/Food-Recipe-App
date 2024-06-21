import 'package:flutter/material.dart';
import 'package:foodrecipe/views/recipe_description_screen.dart';
import 'package:foodrecipe/widgets/categories_list.dart';

import '../models/recipe.api.dart';
import '../models/recipe.dart';
import '../widgets/recipe_card.dart';
import '../widgets/searchbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchEditingController = TextEditingController();

  List<Recipe> _recipes = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    //getRecipes();
  }

  Future<void> getRecipes() async {
    //_recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(top:15.0, left: 15.0, right:15.0 ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Find The Best Recipes\nFor Cooking',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  MySearchBar(controller: searchEditingController),
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        child: Text("Categories",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                        ),
                      ),
                      Align(
                        child: Text("See All",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.greenAccent
                          ),
                        ),
                      )
                    ],
                  ),
                  CategoriesListView(),
                ],
              ),
            ),
            SizedBox(
              height: 255,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder:
                        (c) => const RecipeDescription()));
                    },
                    child: const RecipeCard(
                      title: 'My recipe',
                      rating: '4.9',
                      cookTime: '30 min',
                      thumbnailUrl: 'https://cdn.tatlerasia.com/tatlerasia/i/2022/09/15090735-westholmewaytenderloinwellington_cover_1500x1125.jpg'
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top:10.0, left: 15.0, right:15.0 ),
              child: const Align(

                alignment: Alignment.centerLeft,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recommended for you",
                      textAlign: TextAlign.start,
                      style:
                      TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),),
                    Text("See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.greenAccent
                      ),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 255,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const RecipeCard(
                    title: 'My recipe',
                    rating: '4.9',
                    cookTime: '30 min',
                    thumbnailUrl: 'https://www.thespruceeats.com/thmb/gTjo1gnOuBEVJsttgDW2JljvKY0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/shrimp-fettuccine-alfredo-recipe-5205738-hero-01-1a40571b0e3e4a17ab768b4d700c7836.jpg'  );
                },
              ),
            ),
            /*Container(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                shrinkWrap: true, // Added shrinkWrap property
                physics: const NeverScrollableScrollPhysics(), // Added physics property
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                    title: _recipes[index].name,
                    cookTime: _recipes[index].totalTime,
                    rating: _recipes[index].rating.toString(),
                    thumbnailUrl: _recipes[index].images,
                  );
                },
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
