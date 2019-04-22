import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';
import './setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Attique Ur Rehman',
                    style: TextStyle(fontFamily: 'OpenSansBold', fontSize: 38),
                  ),
                  Text(
                    'View and Edit Profile',
                    style: TextStyle(
                      fontFamily: 'OpenSansRegular',
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    '1 step left',
                    style: TextStyle(
                      fontFamily: 'OpenSansRegular',
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      stepContainerLeft(context, 'red'),
                      stepContainer(context, 'red'),
                      stepContainer(context, 'red'),
                      stepContainer(context, 'red'),
                      stepContainerRight(context),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    child: Text(
                      'The last step for fun one',
                      style: TextStyle(
                        fontFamily: 'OpenSansRegular',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  listItem(context, 'Setting', Icons.settings),
                  line(context),
                  listItem(context, 'Sign-Out', Icons.settings_backup_restore),
                  line(context)
                ],
              ))
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 4),
    );
  }

  Container line(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.94,
      height: 2,
      color: Colors.grey,
    );
  }

  GestureDetector listItem(context, title, icon) {
    return GestureDetector(
      onTap: () {
        navigateUser(context, title);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontFamily: 'OpenSansRegular',
                fontSize: 18,
                color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
          ),
        ],
      ),
    );
  }

  void navigateUser(context, screen_name) {
    if (screen_name == 'Setting') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => SettingScreen()),
      );
    }
  }

  Container stepContainerLeft(BuildContext context, color) {
    return Container(
      margin: EdgeInsets.only(left: 0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(6.0),
            bottomLeft: const Radius.circular(6.0),
          )),
    );
  }

  Container stepContainer(BuildContext context, color) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      width: MediaQuery.of(context).size.width * 0.15,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }

  Container stepContainerRight(
    BuildContext context,
  ) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      width: MediaQuery.of(context).size.width * 0.15,
      height: 60,
      decoration: BoxDecoration(
          color: Color.fromRGBO(218, 218, 218, 1),
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(6.0),
            bottomRight: const Radius.circular(6.0),
          )),
    );
  }
}
