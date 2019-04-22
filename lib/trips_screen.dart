import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';

class TripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 6),
        child: ListView(
          children: <Widget>[
            buildApartmentList(context, 'Zurich', 2),
            buildApartmentList(context, 'Stockholm', 3)
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 2),
    );
  }

  Row buildApartmentList(BuildContext context, cityName, index) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 8),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(25, 164, 153, 1)),
            ),
            Container(
              width: 2,
              height: MediaQuery.of(context).size.height * 0.46,
              margin: EdgeInsets.only(top: 8),
              color: Color.fromRGBO(25, 164, 153, 1),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  cityName,
                  style: TextStyle(
                      fontFamily: 'OpenSansRegular',
                      fontSize: 36,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  '10 days ago 8-9 Nov',
                  style: TextStyle(
                      fontFamily: 'OpenSansRegular',
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Material(
                elevation: 4.0,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        height: 300,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image(
                                image:
                                    AssetImage('assets/images/img$index.jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(left: 6),
                              child: Text(
                                'Perfectly located apartment in city\ncenter',
                                style: TextStyle(
                                    fontFamily: 'OpenSansRegular',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
