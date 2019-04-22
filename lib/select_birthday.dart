import 'package:flutter/material.dart';
import './create_password.dart';

class SelectBirthDayScreen extends StatefulWidget {
  _SelectBirthDayScreenState createState() => _SelectBirthDayScreenState();
}

class _SelectBirthDayScreenState extends State<SelectBirthDayScreen> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    print('hello');
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
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
                'When is your birthday?',
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
            width: MediaQuery.of(context).size.width * .90,
            child: Text(
              "You must be at least 18 years old to use Ting. \nOther people won't see Birthday",
              style: TextStyle(
                  fontFamily: 'OpenSansRegular',
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                print('dddd');
                _selectDate(context);
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "${selectedDate.toLocal()}",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'OpenSansRegular'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .90,
            height: 1.6,
            color: Colors.white,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: <Widget>[],
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
                            CreatePasswordScreen()),
                  );
                },
                child: Icon(
                  Icons.navigate_next,
                  size: 32,
                  color: Color.fromRGBO(25, 164, 153, 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
