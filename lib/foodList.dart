import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recommended',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'SEE ALL',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF469469)),
              )
            ],
          ),
        ),
        Container(
          height: 250.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getCard('assets/food1.jpg', 'Granola with fruits'),
              getCard('assets/food2.jpg', 'Bread with avocado'),
            ],
          ),
        )
      ],
    );
  }

  Widget getCard(String imgPath, String foodName) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, bottom: 10.0,top: 10.0, right: 10.0),
      child: Container(
        height: 175.0,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3.0)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(12.0), topLeft: Radius.circular(12.0)),
                    image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                    top: 10.0,
                    right: 10.0,
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white.withOpacity(0.6),
                      ),
                      child: Center(
                        child: Icon(Icons.favorite, color: Colors.white,),
                      ),
                    ))
              ],
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 10.0),
              child: Text(foodName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Breakfast Light food', style: TextStyle(color: Colors.grey, fontSize: 10.0),),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14.0,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.grey,
                    size: 14.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '4.5',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
