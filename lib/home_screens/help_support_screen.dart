import 'package:flutter/material.dart';
import 'package:my_second_ui/home_screens/settings_screen.dart';

class HelpSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 111.0,
            decoration: BoxDecoration(
              color: Color(0xff8c98a8),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xffffffff),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SettingsScreen()));
                          }),
                      Text(
                        'Help & Support',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                CategoryList(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
            child: Row(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff8c98a8),
                  ),
                  child: Center(
                    child: Text(
                      '?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Color(0xffffffff),
                        letterSpacing: 0.18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Help & Support',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Color(0xff606060),
                    letterSpacing: 0.18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          HelpBox(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1 / 4,
          ),
          HelpBox(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1 / 4,
          ),
          HelpBox(),
        ],
      ),
    );
  }
}

class HelpBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5 / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: Color(0x24000000),
            offset: Offset(0, 0),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              color: Color(0xff8c98a8),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor ?\nimagna aliqua. ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            child: Text(
              'Lorem ipsum dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. Lorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. ',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Color(0xff8c98a8),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['FAQ', 'Privacy Policy'];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 30),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Colors.white.withOpacity(0.4)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                categories[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
