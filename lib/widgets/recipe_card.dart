import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;
  const RecipeCard({
    super.key,
    required this.title,
    required this.cookTime,
    required this.rating,
    required this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 4,
            child: Image.network(
              thumbnailUrl,
              fit: BoxFit.cover, // You can also try BoxFit.fill
            ),

          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  const SizedBox(width: 5),
                  Text(rating),
                ],
              ),
              SizedBox(width: 25,),
              Row(
                children: [
                  const Icon(
                    Icons.schedule,
                    color: Colors.greenAccent,
                    size: 18,
                  ),
                  const SizedBox(width: 5),
                  Text(cookTime),
                ],
              )
            ],
          ),
         /* Column(
            children: [


              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,

                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        const SizedBox(width: 7),
                        Text(rating),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.schedule,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        const SizedBox(width: 7),
                        Text(cookTime),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}