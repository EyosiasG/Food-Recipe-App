import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final Map<String, String> categories = {
    'All': 'images/all.png',
    'Breakfast':'images/breakfast.png',
    'Lunch': 'images/lunch.png',
    'Dinner':'images/dinner.png',
    'Desserts':'images/dessert.png',
    'Fast-food':'images/burger.png'
  };



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          String imageName = categories.keys.elementAt(index);
          String imagePath = categories.values.elementAt(index);
          return Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: index == 1 ? Colors.greenAccent : Colors.white,
                    borderRadius: BorderRadius.circular(5.0)
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(imagePath, height: 30,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(imageName,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}