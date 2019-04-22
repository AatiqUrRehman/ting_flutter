import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';
import './saved_homes_screen.dart';

class SavedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 12, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Saved',
                    style: TextStyle(fontSize: 38, fontFamily: 'OpenSansBold'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Home',
                    style:
                        TextStyle(fontSize: 32, fontFamily: 'OpenSansRegular'),
                  ),
                ],
              )),
          Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 1,
                // itemExtent: 10.0,
                // reverse: true, //makes the list appear in descending order
                itemBuilder: (BuildContext context, int index) {
                  return _buildItems(index, context);
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, top: 4),
            child: Text(
              'Experiences',
              style: TextStyle(fontSize: 34, fontFamily: 'OpenSansRegular'),
            ),
          ),
          Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 3,
                // itemExtent: 10.0,
                // reverse: true, //makes the list appear in descending order
                itemBuilder: (BuildContext context, int index) {
                  return _buildItems(index + 1, context);
                }),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 1),
    );
  }

  Widget _buildItems(int index, context) {
    final int imgIndex = index + 1;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => SavedHomesScreen()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 12, right: 12, top: 12),
        height: 240,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/img$imgIndex.jpg'))),
      ),
    );
  }
}
