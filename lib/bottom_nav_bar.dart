import 'package:flutter/material.dart';
import './trips_screen.dart';
import './inbox_screen.dart';
import './profile_screen.dart';
import './saved_screen.dart';
import './explore_screen.dart';

BottomNavigationBar CustomBottomNavBar(BuildContext context, int selectedItem) {
  return BottomNavigationBar(
    currentIndex: selectedItem,
    type: BottomNavigationBarType.fixed,
    onTap: (value) {
      _getBody(value, context);
    },
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Text(
          "EXPLORE",
          style: TextStyle(
              fontFamily: 'OpenSansRegular', fontWeight: FontWeight.w600),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text(
          "SAVED",
          style: TextStyle(
              fontFamily: 'OpenSansRegular', fontWeight: FontWeight.w600),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.airplanemode_active),
        title: Text(
          "TRIPS",
          style: TextStyle(
              fontFamily: 'OpenSansRegular', fontWeight: FontWeight.w600),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.message),
        title: Text(
          "INBOX",
          style: TextStyle(
              fontFamily: 'OpenSansRegular', fontWeight: FontWeight.w600),
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text(
          "PROFILE",
          style: TextStyle(
              fontFamily: 'OpenSansRegular', fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}

void _getBody(int index, context) {
  switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => ExploreScreen()),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => SavedScreen()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => TripsScreen()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => InboxScreen()),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => ProfileScreen()),
      );
  }
}
