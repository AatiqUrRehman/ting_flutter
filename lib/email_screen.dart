import 'package:flutter/material.dart';
import './select_birthday.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool switchOn = false;

    void _onSwitchChanged(bool value) {
      switchOn = true;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 38,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromRGBO(25, 164, 153, 1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(25, 164, 153, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'And, your email?',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'OpenSansRegular'),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * .74,
                  child: Text(
                    "I'd like to receive marketing and policy  communications from Ting and  it's partners",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'OpenSansRegular'),
                  ),
                ),
                Container(
                    child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.white, width: 1.0),
                  ),
                  child: InkWell(
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.white,
                      onChanged: _onSwitchChanged,
                      value: switchOn,
                    ),
                  ),
                ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                elevation: 0.1,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            SelectBirthDayScreen()),
                  );
                },
                child: Icon(
                  Icons.navigate_next,
                  size: 32,
                  color: Color.fromRGBO(25, 164, 153, 1),
                ),
              ),
            ),
          ),
          

        ],
      ),
    );
  }
}
