import 'package:flutter/material.dart';
import 'package:plant_app_ui/detail_screen.dart';
import 'package:plant_app_ui/plant_profile.dart';

import 'list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.teal.shade500,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_sharp,
                size: 30,
              )),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 35,color: Colors.pinkAccent.shade200,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,size: 35,color: Colors.grey.shade600,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.person_outline,size: 35,color: Colors.grey.shade600,))
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.2,
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.2 - 27,
                      decoration: BoxDecoration(
                          color: Colors.teal.shade500,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                              bottomRight: Radius.circular(35))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 40.0, left: 20, right: 20),
                        child: Row(
                          children: [
                            Text(
                              "Hi Tridip",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade100),
                            ),
                            Spacer(),
                            Container(
                              height: 50,
                              child: Image.asset("lib/icons/information.png"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200
                                          .withOpacity(0.25),
                                      blurRadius: 50,
                                      offset: Offset(0, 12))
                                ]),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 35,
                                  ),
                                  hintText: "Search",
                                  hintStyle: TextStyle(fontSize: 22)),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Recommended",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("More"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.teal,
                      textColor: Colors.grey.shade200,
                    )
                  ],
                ),
              ),

              SizedBox(height: 15,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      child: PlantProfile(
                        treeName: "PEACE LILY",
                        icon: "lib/icons/plant1.jpg",
                        price: 350,
                        country: "Russia",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                      },
                    ),
                    GestureDetector(
                      child: PlantProfile(
                        treeName: "PARADISE",
                        icon: "lib/icons/plant2.jpg",
                        price: 400,
                        country: "America",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                      },
                    ),
                    GestureDetector(
                      child: PlantProfile(
                        treeName: "JADE PLANT",
                        icon: "lib/icons/plant3.jpg",
                        price: 380,
                        country: "America",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                      },
                    ),
                    GestureDetector(
                      child: PlantProfile(
                        treeName: "MAIDENHAIR",
                        icon: "lib/icons/plant4.jpg",
                        price: 450,
                        country: "England",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                      },
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Featured Plants",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("More"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.teal,
                      textColor: Colors.grey.shade200,
                    )
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ListTilePlant(image: "lib/icons/plant6.jpg",),
                    ListTilePlant(image: "lib/icons/plant5.jpg",),
                    ListTilePlant(image: "lib/icons/plant3.jpg",),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
