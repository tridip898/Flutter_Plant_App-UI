
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            SizedBox(
              height: height * 0.8,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back,
                                      size: 30,
                                    )),
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(5),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.22),
                                        blurRadius: 25,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Icon(
                                Icons.light_mode_outlined,
                                size: 45,
                                color: Colors.teal.shade200,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(5),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.22),
                                        blurRadius: 25,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Icon(
                                Icons.settings,
                                size: 45,
                                color: Colors.teal.shade200,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(5),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.22),
                                        blurRadius: 25,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Icon(
                                Icons.notification_add_outlined,
                                size: 45,
                                color: Colors.teal.shade200,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.all(5),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.22),
                                        blurRadius: 25,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Icon(
                                Icons.favorite_outline,
                                size: 45,
                                color: Colors.teal.shade200,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    height: height * 0.8,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.lightBlueAccent.withOpacity(0.25),
                              blurRadius: 100,
                              spreadRadius: 10,
                              offset: Offset(20, 20))
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.fill,
                            image: AssetImage("lib/icons/image.jpg"))),
                  )
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
                    "PEACE LILY",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "\$400",
                    style: TextStyle(fontSize: 20, color: Colors.teal.shade500),
                  )
                ],
              ),
            ),
            SizedBox(height: 8,),
            Row(
                children: [
                  SizedBox(
                    width: width / 2,
                    height: 48,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text("Buy Now",style: TextStyle(fontSize: 20),),
                      color: Colors.teal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                      ),
                    ),
                  ),
                  Expanded(
                      child: TextButton(onPressed: (){}, child: Text("Description",style: TextStyle(fontSize: 22),))
                  ),
                ]
            )
          ],
        ),
      ),
    );
  }
}
