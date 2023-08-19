import 'package:flutter/material.dart';

import '../widgets/searchbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Food Recipe",)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.menu))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child:Text('Find The Best Recipes\nFor Cooking',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
              ),

              MySearchBar(
                controller: searchEditingController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
