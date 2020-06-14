import 'package:flutter/material.dart';

class Dtype extends StatefulWidget {
  //CommonD({this.plant});

  @override
  _DtypeState createState() => _DtypeState();
}

class _DtypeState extends State<Dtype> {
  final dtype = [
    "Adirondack Blue",
    "Adirondack Red",
    "Agata",
    "Ajanhuiri",
    "Alpine Russet",
    "Andean black",
    "Arran Victory",
    "Bellarosa",
    "Belana",
    "Irish Cobbler",
    "Linda potato",
    "May Queen",
    "Dejima",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: 60.0,
                  ),
                  height: 520.0,
                  color: Color(0xFF32A060),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.arrow_back,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Plant Name", // cat
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Potato', // name
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Text(
                        'Scientific Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Solanum tuberosum', //price
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                    ],
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 100.0,
                  child: Hero(
                    tag: "tomato", // url
                    child: Image(
                      height: 130.0,
                      width: 210.0,
                      image: AssetImage("images/potatob.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 400.0,
              width: 500.0,
              transform: Matrix4.translationValues(0.0, -60.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                      top: 50.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Types',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          ". ${dtype[0]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[1]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[2]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[3]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[4]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[5]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[6]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[7]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[8]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[9]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[10]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[11]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${dtype[12]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
