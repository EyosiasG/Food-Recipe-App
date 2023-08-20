import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<String> categories = [
    'All',
    'Breakfast',
    'Dinner',
    'Desserts',
    'Fast-food',
  ];



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 15.0, top: 10.0, bottom: 10.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                color: Colors.orangeAccent, // Define the border color here
                width: 1.0, // Define the border width if needed
              ),
            ),
            child: Center(
              child: Text(
                categories[index],
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}