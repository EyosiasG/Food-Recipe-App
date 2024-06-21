import 'package:flutter/material.dart';

class RecipeDescription extends StatefulWidget {
  const RecipeDescription({super.key});

  @override
  State<RecipeDescription> createState() => _RecipeDescriptionState();
}

class _RecipeDescriptionState extends State<RecipeDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(children: [
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withOpacity(1.0),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0),
                    // <-- change this opacity
                    // Colors.transparent // <-- you might need this if you want full transparency at the edge
                  ],
                  stops: [
                    0.0,
                    0.75,
                    0.8,
                    1.0
                  ], //<-- the gradient is interpolated, and these are where the colors above go into effect (that's why there are two colors repeated)
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.network(
                'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
                width: double.infinity,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 2.5,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          // <-- Button color
                          foregroundColor: Colors.red, // <-- Splash color
                        ),
                        child:
                            const Icon(Icons.arrow_back, color: Colors.black),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          // <-- Button color
                          foregroundColor: Colors.red, // <-- Splash color
                        ),
                        child: const Icon(Icons.save_alt, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
                bottom: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mediterranean Cured Corsica",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  SizedBox(width: 7),
                                  Text("4.8"),
                                ],
                              ),
                              SizedBox(width: 25),
                              Row(
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.greenAccent,
                                    size: 18,
                                  ),
                                  SizedBox(width: 7),
                                  Text("20 min"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                )),
          ]),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet massa erat. Suspendisse mollis urna eu lectus pellentesque, at rutrum mi fermentum. Morbi mattis purus libero, at porta elit pulvinar eget. Suspendisse porta odio turpis, vitae efficitur lacus tincidunt sit amet. In pharetra vehicula ultricies.",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Ingredients",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Adding a SizedBox with zero height to ensure there's no additional space
                //const SizedBox(height: 0),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      // Ensures the ListView only takes up the necessary space
                      padding: EdgeInsets.zero,
                      // Removes any internal padding from ListView
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.yellowAccent.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset('images/lunch.png',
                                          height: 30,),
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Spaghetti"),
                                  ),
                                ],
                              ),
                            ),
                            const Text("200 gm"),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                const Text("Directions",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                ),
                ),
                Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      // Ensures the ListView only takes up the necessary space
                      padding: EdgeInsets.zero,
                      // Removes any internal padding from ListView
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${index + 1}. "),
                              const Flexible(
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet massa erat. Suspendisse mollis urna eu lectus pellentesque, at rutrum mi fermentum.",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

        ]
          )),
    );
  }
}
