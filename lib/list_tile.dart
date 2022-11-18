import 'package:flutter/material.dart';

class ListTilePlant extends StatelessWidget {
  final String image;
  const ListTilePlant({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Container(
        height: height*0.25,
        width: width*0.9,
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.23),
                blurRadius: 100,
                spreadRadius: 10,
                offset: Offset(0, 10)
              )
            ],
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)
        ),
      ),
    );
  }
}
