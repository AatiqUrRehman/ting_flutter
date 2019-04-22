import 'package:flutter/material.dart';
import './bottom_nav_bar.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey,
              height: 2.0,
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
          'Alexender',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSansRegular',
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 12,
            ),
            child: Column(
              children: <Widget>[
                senderMessage(context),
                SizedBox(
                  height: 8,
                ),
                receiverMessage(context),
                SizedBox(
                  height: 8,
                ),
                senderMessage(context),
                SizedBox(
                  height: 8,
                ),
                receiverMessage(context),
                SizedBox(
                  height: 8,
                ),
                senderMessage(context),
                SizedBox(
                  height: 8,
                ),
                receiverMessage(context)
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(context, 3),
    );
  }

  Row receiverMessage(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            right: 12,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/img2.jpg'),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.76,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(
            top: 18,
          ),
          height: 160,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
            style: TextStyle(
                fontFamily: 'OpenSansRegular',
                fontSize: 16,
                color: Colors.black),
          ),
          decoration: BoxDecoration(
              color: Color.fromRGBO(242, 242, 243, 1),
              borderRadius: BorderRadius.all(Radius.circular(6))),
        ),
      ],
    );
  }

  Row senderMessage(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.76,
          padding: EdgeInsets.all(12),
          height: 160,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
            style: TextStyle(
                fontFamily: 'OpenSansRegular',
                fontSize: 16,
                color: Colors.white),
          ),
          decoration: BoxDecoration(
              color: Color.fromRGBO(25, 164, 153, 1),
              borderRadius: BorderRadius.all(Radius.circular(6))),
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/img2.jpg'),
          ),
        )
      ],
    );
  }
}
