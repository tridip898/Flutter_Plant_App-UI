import 'package:flutter/material.dart';

class PlantProfile extends StatelessWidget {
  final String treeName;
  final String icon;
  final int price;
  final String country;

  const PlantProfile({Key? key, required this.treeName, required this.icon, required this.price, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: height*0.3,
        width: width*0.45,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  offset: Offset(5, 15),
                  color: Colors.white.withOpacity(0.20),
                  blurRadius: 30,
                spreadRadius: 20
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(icon),fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))
              ),

            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Text(treeName,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("\$"+ price.toString(),style: TextStyle(fontSize: 18,color: Colors.teal.shade500),),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(country,style: TextStyle(fontSize: 19,color: Colors.teal.shade500),),
            )
          ],

        ),
      ),
    );
  }
}
