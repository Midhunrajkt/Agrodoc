import 'package:flutter/material.dart';

class Condition extends StatefulWidget {
  //Condition({this.plant});

  @override
  _ConditionState createState() => _ConditionState();
}

class _ConditionState extends State<Condition> {
  final condition = [
    "Pepper is a humid tropic plant, which requires adequate rainfall and humidity. The hot and humid climate of submountanous tracts of Western Ghats and Eastern Ghats is ideal for its growth. It grows successfully between 20o north and south latitude and from sea level upto 1500 meters above MSL. The temperature ranges between 10o and 40oC. A well-distributed annual rainfall of 125-200 cm is considered ideal for pepper.",
    "Pepper can be grown in a wide range of soils such as clay loam, red loam, sandy loam and lateritic soils with a pH of 4.5 to 6.0, though in its natural habitat, it thrives best on virgin soil rich in organic matter."
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
                        'Pepper', // name
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
                        'Piper nigrum', //price
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
                      image: AssetImage("images/pepperb.png"),
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
                          'Climate and soil Requirement',
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
