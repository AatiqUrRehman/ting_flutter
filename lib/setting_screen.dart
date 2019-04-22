import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';
import './currencies_screen.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before,
            size: 38,
          ),
          color: Colors.black,
        ),
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSansRegular',
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                listItem(context, 'Notifications', Icons.swap_vertical_circle),
                line(context),
                listItem(context, 'Currency', Icons.monetization_on),
                line(context)
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 4),
    );
  }

  Container line(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.94,
      height: 1,
      color: Colors.grey,
    );
  }

  GestureDetector listItem(context, title, icon) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => CurrenciesScreen()),
        );
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
            color: Color.fromRGBO(25, 164, 153, 1),
            icon: Icon(icon),
          ),
        ],
      ),
    );
  }
}
