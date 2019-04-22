import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';
import './chat_screen.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Inbox',
                    style: TextStyle(
                        fontFamily: 'OpenSansBold',
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'You have no unread messages',
                    style: TextStyle(
                        fontFamily: 'OpenSansRegular',
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildMessageList(context, 4),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, bottom: 12),
                    width: MediaQuery.of(context).size.width * .90,
                    height: 2,
                    color: Colors.grey,
                  ),
                  buildMessageList(context, 3),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    width: MediaQuery.of(context).size.width * .90,
                    height: 2,
                    color: Colors.grey,
                  )
                ],
              )),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 3),
    );
  }

  Row buildMessageList(BuildContext context, index) {
    return Row(
      children: <Widget>[
        Container(
          width: 52,
          height: 52,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/img$index.jpg'),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ChatScreen()),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 12),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Christina',
                        style: TextStyle(
                            fontFamily: 'OpenSansRegular',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.38),
                      child: Text(
                        '8 Nov 2018',
                        style: TextStyle(
                          fontFamily: 'OpenSansRegular',
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                margin: EdgeInsets.only(left: 14),
                child: Text(
                  'You have no unread messages',
                  style: TextStyle(
                      fontFamily: 'OpenSansRegular',
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
