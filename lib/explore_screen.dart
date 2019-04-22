import 'package:flutter/material.dart';
import './apartment_detail_screen.dart';
import './bottom_nav_bar.dart';

class ExploreScreen extends StatelessWidget {
  final List<String> titles = ['Homes', 'Experiences', 'Adventure', 'Trips'];

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: buildBottomNavBar(context),
      data: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }

  Scaffold buildBottomNavBar(context) {
    var apartmentInfo = Stack(
      children: <Widget>[
        Container(
          width: 160,
          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              border: Border.all(color: Colors.grey),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/img2.jpg'))),
        ),
        Positioned(
          child: Container(
            padding: EdgeInsets.only(left: 125, top: 5),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 28,
            ),
          ),
        )
      ],
    );
    var apartmentTextOne = Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 12),
      child: Column(
        children: <Widget>[
          Text(
            'ENTIRE APARTMENT- 1 BEDROOM',
            style: TextStyle(
                fontSize: 9.8,
                fontWeight: FontWeight.w700,
                fontFamily: 'OpenSansBold'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Centric studio with\nroof top terrace ",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                fontFamily: 'OpenSansBold'),
          ),
          SizedBox(
            height: 2,
          ),
        ],
      ),
    );
    var perPersonText = Container(
      padding: EdgeInsets.only(left: 12),
      alignment: Alignment.topLeft,
      child: Text(
        '85 CHF per person',
        style: TextStyle(
            color: Colors.grey,
            fontFamily: 'OpenSansRegular',
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
    );
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: 12,
                    ),
                    child: Text(
                      'Explore',
                      style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'OpenSansRegular'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 6),
                    height: 140,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 4,
                        // itemExtent: 10.0,
                        // reverse: true, //makes the list appear in descending order
                        itemBuilder: (BuildContext context, int index) {
                          return _buildItems(index, context);
                        }),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 12),
                    child: Text(
                      'Zurich',
                      style: TextStyle(
                          fontFamily: 'OpenSansRegular',
                          fontSize: 32,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 12),
                        child: apartmentInfo,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      apartmentTextOne,
                      perPersonText,
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Stockholm',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSansRegular',
                              fontSize: 34,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 12),
                        child: apartmentInfo,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      apartmentTextOne,
                      perPersonText,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(context, 0));
  }

  Widget _buildItems(int index, context) {
    final int imgIndex = index + 1;

    return new Container(
      child: new Row(
        children: [
          new Row(children: [
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  margin: EdgeInsets.only(right: 12),
                  height: 80,
                  width: 120,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: new Border.all(color: Colors.grey),
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/img$imgIndex.jpg'))),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ApartmentDetailScreen()),
                    );
                  },
                  child: Text(
                    titles[index],
                    style: TextStyle(
                        fontFamily: 'OpenSansRegular',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                )),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
