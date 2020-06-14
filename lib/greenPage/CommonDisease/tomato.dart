import 'package:flutter/material.dart';

class CommonD extends StatefulWidget {
  //CommonD({this.plant});

  @override
  _CommonDState createState() => _CommonDState();
}

class _CommonDState extends State<CommonD> {
  final commonDisease = [
    "Bacterial spot",
    "Early blight",
    "Late blight",
    "Leaf mould",
    "Mosaic virus",
    "Septoria leaf spot",
    "Target spot",
    "Yellow leaf curl virus",
    "Spidermites two spotted"
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
                        'Tomato', // name
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
                        'Solanum lycopersicum', //price
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: <Widget>[
                      //     Hero(
                      //       tag: widget.plant, // url
                      //       child: Image(
                      //         height: 150.0,
                      //         width: 150.0,
                      //         image: AssetImage("assets/tomato.jfif"),
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      //SizedBox(height: 40.0),
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
                      image: AssetImage("images/tomatob.png"),
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
                          'Predicted Disease',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          ". ${commonDisease[0]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[1]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[2]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[3]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[4]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[5]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[6]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[7]}", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${commonDisease[8]}", // description
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
