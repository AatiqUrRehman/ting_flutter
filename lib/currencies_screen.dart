import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';

class CurrenciesScreen extends StatefulWidget {
  @override
  _CurrenciesScreenState createState() => _CurrenciesScreenState();
}

class _CurrenciesScreenState extends State<CurrenciesScreen> {
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
          'Currencies',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSansRegular',
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 12, top: 12),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    listCountry('Euro'),
                    line(context),
                    listCountry('Dollor'),
                    line(context),
                    listCountry('PKR'),
                    line(context),
                    listCountry('CHN'),
                    line(context),
                    listCountry('INR'),
                    line(context)
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 4),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(25, 164, 153, 1),
        onPressed: () {},
        child: Container(
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Container listCountry(title) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: 'OpenSansRegular',
            fontSize: 18,
            color: (title == 'PKR'
                ? Color.fromRGBO(25, 164, 153, 1)
                : Colors.black),
            fontWeight: FontWeight.w600),
      ),
    );
  }

  Container line(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12),
      width: MediaQuery.of(context).size.width * 0.90,
      height: 1,
      color: Colors.grey,
    );
  }
}
