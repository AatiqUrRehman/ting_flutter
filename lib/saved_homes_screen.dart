import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';
import './explore_screen.dart';

class SavedHomesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 42,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(
                left: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Saved Homes',
                    style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 42),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Nothing saved yet',
                      style: TextStyle(
                          fontFamily: 'OpenSansRegular', fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          fontFamily: 'OpenSansRegular', fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    child: FlatButton.icon(
                      color: Color.fromRGBO(25, 164, 153, 1),
                      icon: Container(),
                      //`Icon` to display
                      label: Text(
                        'Start exploring',
                        style: TextStyle(
                            fontFamily: 'OpenSansRegular',
                            fontSize: 16,
                            color: Colors.white),
                      ), //`Text` to display
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ExploreScreen()),
                        );
                      },
                    ),
                  )
                ],
              ))
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 1),
    );
  }
}
