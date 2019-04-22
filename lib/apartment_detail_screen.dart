import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import './bottom_nav_bar.dart';
import './experiences_screen.dart';

class ApartmentDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/images/img5.jpg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                      child: Container(
                          padding: EdgeInsets.only(left: 12, top: 38),
                          child: GestureDetector(
                            onTap: () {
                              print('jhjhjhjh');
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.navigate_before,
                              color: Colors.white,
                              size: 34,
                            ),
                          ))),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.98,
                padding: EdgeInsets.only(left: 8),
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ExperiencesScreen()),
                    );
                  },
                  child: Text(
                    "Centric studio with roof\ntop terrace ",
                    style:
                        TextStyle(fontSize: 28, fontFamily: 'OpenSansRegular'),
                  ),
                )),
            SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.98,
              padding: EdgeInsets.only(left: 8),
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Entire apartment',
                      style:
                          TextStyle(fontFamily: 'OpenSansBold', fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 18),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img1.jpg'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 12),
              child: Text(
                'Hosted by Christina',
                style: TextStyle(
                    fontFamily: 'OpenSansRegular',
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 12),
              child: Text(
                '85 CHF per night',
                style: TextStyle(
                    fontFamily: 'OpenSansRegular',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 6),
            Row(children: [
              Container(
                padding: EdgeInsets.only(left: 8),
                alignment: Alignment.topLeft,
                child: SmoothStarRating(
                  allowHalfRating: false,
                  onRatingChanged: (v) {},
                  starCount: 5,
                  rating: 2,
                  size: 30.0,
                  color: Colors.green,
                  borderColor: Colors.green,
                ),
              ),
              Container(
                  child: Text(
                ' 3 Votes',
                style: TextStyle(
                    fontFamily: 'OpenSansRegular',
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              )),
            ]),
            SizedBox(
              height: 22,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.94,
              height: 2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 12),
              child: Text(
                'Small and cozy top floor studio with its own\nroof top terrace',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSansRegular',
                    fontSize: 16),
              ),
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(context, 0));
  }
}
