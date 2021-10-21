import 'dart:ui';
import 'package:flutter/material.dart';

import 'details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: <Widget>[
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Witamy, Elvis',
                style: TextStyle(
                  fontFamily: 'sansation',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              )
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/model.jpeg'),
                      fit: BoxFit.cover,
                    )
                  ),
                )
              )
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
              padding: const EdgeInsets.only(right: 45.0),
            child: Container(
              child: Text(
                'Wybierz najlepszy smak herbaty na dzisiejszy wieczór!',
                style: TextStyle(
                  fontFamily: 'amatic',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Smak tygodnia',
              style: TextStyle(
                fontFamily: 'sansation',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.indigoAccent
              ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 15.0),
              child: Text('Zobacz wszystko',
              style: TextStyle(
                fontFamily: 'sansation',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
              )
              )
            ],
          ),
          SizedBox(height: 15.0),
      Container(
        height: 410.0,
      child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _teaListCard('assets/blacktea.png',
        'Czarna herbata z cytryną',
        'BlackTeaSS Shop',
        'Nasza mała czarna, starannie parzona z dodatkiem świeżego plasterka cytryny',
        '8 zł',
        false
        ),
        _teaListCard('assets/whitetea.png',
        'Aromatyczna biała herbata',
          'JapanTea Shop',
          'Subtelnie delikatna herbata z lekką jak chmura nutą wiśni',
          '10 zł',
          false
        )
      ]
      )
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Odkryj',
                style: TextStyle(
                  fontFamily: 'sansation',
                  fontSize: 19.0,
                  color: Colors.black),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                'Zobacz wszystko',
                style: TextStyle(
                  fontFamily: 'sansation',
                  fontSize: 19.0,
                  color: Colors.grey
                ),
              ),)
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            height: 125.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildImage('assets/bubbletea.jpeg'),
              _buildImage('assets/greentea.jpeg'),
              _buildImage('assets/minttea.jpeg')
            ],
          )
          ),
          SizedBox(height: 20.0),
        ],
        )
      );
  }

  _buildImage(String imgPath){
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)
        ),
      ),
    );
  }

  _teaListCard(String impPath, String teaName, String shopName, String description, String price, bool isFavorite){
    return Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
    child: Container(
      height: 300.0,
      width: 225.0,
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: 335.0,
              ),
              Positioned(
                top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.lightBlueAccent
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          shopName,
                        style: TextStyle(
                          fontFamily: 'amatic',
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          teaName,
                          style: TextStyle(
                            fontFamily: 'sansation',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        ),
                        SizedBox(height: 10.0),
                    Text(
                      description,
                      style: TextStyle(
                        fontFamily: 'amatic',
                        fontSize: 17.0,
                        color: Colors.black,
                      fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              price,
                              style: TextStyle(
                                fontFamily: 'sansation',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white
                              ),
                              child: Center(
                                child: Icon(Icons.favorite,
                                color: isFavorite ? Colors.pink: Colors.pink,
                                size: 15.0),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              ),
              Positioned(
                left: 60.0,
                  top: 25.0,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(impPath),
                        fit: BoxFit.contain
                      )
                    ),
                  ))
            ],
          ),
          SizedBox(height: 20.0),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsPage()
              ));
            },
            child: Container(
              height: 50.0,
              width: 225.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blueGrey
              ),
              child: Center(
                child: Text(
                  'Zamów teraz',
                  style: TextStyle(
                    fontFamily: 'amatic',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}