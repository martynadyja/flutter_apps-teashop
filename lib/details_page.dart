import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 20.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white),
          Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0)),
                    color: Colors.grey,
                  ))),
          Positioned(
              top: MediaQuery.of(context).size.height / 2 + 25.0,
              left: 15.0,
              child: Container(
                  height: (MediaQuery.of(context).size.height / 2) - 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(children: [
                    Text(
                      'Czas przygotowywania',
                      style: TextStyle(
                          fontFamily: 'amatic',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      '10 min',
                      style: TextStyle(
                          fontFamily: 'amatic',
                          fontSize: 24.0,
                          color: Colors.red),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 135.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Składniki',
                      style: TextStyle(
                          fontFamily: 'amatic',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        height: 110.0,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildIngredientItem(
                                  'Woda źródlana',
                                  Icon(EvaIcons.droplet,
                                      size: 20.0, color: Colors.black),
                                  Colors.blue),
                              _buildIngredientItem(
                                  'Saszetka herbaty',
                                  Icon(EvaIcons.starOutline,
                                      size: 20.0, color: Colors.black),
                                  Colors.brown),
                              _buildIngredientItem(
                                  'Cukier na życzenie',
                                  Icon(Icons.crop_square,
                                      size: 20.0, color: Colors.black),
                                  Colors.white60),
                              _buildIngredientItem(
                                  'Cytrynowy aromat',
                                  Icon(EvaIcons.flash,
                                      size: 20.0, color: Colors.black),
                                  Colors.yellow),
                              _buildIngredientItem(
                                  'Plaster cytryny',
                                  Icon(Icons.wb_sunny,
                                      size: 20.0, color: Colors.black),
                                  Colors.orangeAccent),
                              _buildIngredientItem(
                                  'Syrop do wyboru',
                                  Icon(Icons.all_inclusive_rounded,
                                      size: 20.0, color: Colors.black),
                                  Colors.deepOrangeAccent),
                              SizedBox(height: 25.0),
                            ])),
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Informacja żywieniowa',
                      style: TextStyle(
                          fontFamily: 'amatic',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          'Kalorie',
                          style: TextStyle(
                              fontFamily: 'amatic',
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '115',
                          style: TextStyle(
                              fontFamily: 'amatic',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Text(
                          'Witamina C',
                          style: TextStyle(
                              fontFamily: 'amatic',
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '1g',
                          style: TextStyle(
                              fontFamily: 'amatic',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Text(
                          'Kofeina',
                          style: TextStyle(
                              fontFamily: 'amatic',
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '50mg',
                          style: TextStyle(
                              fontFamily: 'amatic',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Container(
                        height: 0.5,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            'Złóż zamówienie',
                            style: TextStyle(
                                fontFamily: 'amatic',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0)
                  ]))),
          Positioned(
              top: MediaQuery.of(context).size.height / 5.5,
              left: 135.0,
              child: Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/blackteadetails.png'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: 25.0,
              left: 15.0,
              child: Container(
                height: 300.0,
                width: 250.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 150.0,
                          child: Text('Czarna herbata',
                              style: TextStyle(
                                  fontFamily: 'sansation',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent)),
                        ),
                        SizedBox(width: 15.0),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.black45),
                          child: Center(
                            child: Icon(Icons.favorite,
                                size: 18.0, color: Colors.pink),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 170.0,
                      child: Text(
                          'Orzeźwiająca, dodająca energi w chłodne, jesienne wieczory. Dostępna w wersji na ciepło oraz na zimno.',
                          style: TextStyle(
                              fontFamily: 'amatic',
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.pinkAccent),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('4.5',
                                    style: TextStyle(
                                        fontFamily: 'amatic',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                Text(' /5',
                                    style: TextStyle(
                                        fontFamily: 'amatic',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ],
                            ))),
                        SizedBox(width: 15.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 35.0,
                                  width: 80.0,
                                ),
                                Positioned(
                                    left: 40.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                        border: Border.all(
                                            color: Colors.black,
                                            style: BorderStyle.solid,
                                            width: 1.0),
                                          image: DecorationImage(
                                            image:
                                                AssetImage('assets/man.jpeg'),
                                            fit: BoxFit.cover
    )
                                          )
                                        )
                                      ),
                                Positioned(
                                  left: 20.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17.5),
                                        image: DecorationImage(
                                          image: AssetImage('assets/model2.jpeg'),
                                          fit: BoxFit.cover
                                        ),
                                        border: Border.all(
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                          width: 1.0
                                        )
                                      ),
                                    ),
                                ),
                                Container(
                                  height: 35.0,
                                  width: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17.5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/model3.jpeg'),
                                      fit: BoxFit.cover
                                    ),
                                    border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 1.0
                                      )
                                    ),
                                  ),
                              ]
                            ),
                            SizedBox(
                              height: 3.0
                            ),
                            Text(
                              '+ 23 więcej',
                              style: TextStyle(
                                fontFamily: 'amatic',
                                fontSize: 17.0,
                                color: Colors.black
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    ]));
  }

  _buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), color: bgColor),
              child: Center(child: iconName)),
          SizedBox(height: 4.0),
          Container(
              width: 60.0,
              child: Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'amatic',
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
