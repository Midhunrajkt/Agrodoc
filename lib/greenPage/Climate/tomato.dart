import 'package:flutter/material.dart';

class Condition extends StatefulWidget {
  //Condition({this.plant});

  @override
  _ConditionState createState() => _ConditionState();
}

class _ConditionState extends State<Condition> {
  final condition = [
    "Temperature below 100C and above 380C adversely affects plant tissues thereby slow down physiological activities. It thrives well in temperature 100C to 300C with optimum range of temperature is 21-240C. The mean temperature below 160C and above 270C are not desirable",
    "The plant doesn't withstand frost, it requires low to medium rainfall, and does well under average monthly temperature of 21 to 230C.",
    "Avoid water stress and long dry period as it causes cracking of fruits. Bright sunshine at the time of fruit set helps to develop dark red coloured fruits.",
    "Tomato can be grown on a wide range of soils from sandy to heavy clay. However, well-drained, sandy or red loam soils rich in organic matter with a pH range of 6.0-7.0 are considered as ideal."
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
                          'Weather',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          ". ${condition[0]}\n", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${condition[1]}\n", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          ". ${condition[2]}\n", // description
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 40.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          ' Soil',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          ". ${condition[3]}\n", // description
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
