import 'package:flutter/material.dart';
import 'package:my_second_ui/home_screens/help_support_screen.dart';
import 'package:my_second_ui/home_screens/images_import_screen.dart';

bool _showSwitch1 = false;
bool _showSwitch2 = false;
bool _showSwitch3 = false;

class PakagePurchasedSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff959595),
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ImageImportScreen()));
          },
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: Color(0xff959595),
            letterSpacing: 0.25714285469055176,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  _createAlertDailog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'You Already Purchase a monthly \nPackage.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Color(0xff606060),
                letterSpacing: 0.15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 5,
                ),
                child: Text(
                  'You will be charged \$5.6 per month,  ahjads consectetur adipiscinhag esalit, sed do eiusmod ahjm tempor imagna aliqua. \nLorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xff8c98a8),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Colors.black26,
                      letterSpacing: 0.16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 12),
          child: Text(
            'Package Detail',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Color(0xff959595),
              letterSpacing: 0.19999999809265134,
              fontWeight: FontWeight.w500,
              height: 1.2857142857142858,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 5),
            child: ListTile(
              title: Text(
                'Purchase Package',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xff959595),
                  letterSpacing: 0.22857142639160155,
                  height: 1.125,
                ),
                textAlign: TextAlign.left,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                _createAlertDailog(context);
              },
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'You Purchased Monthly Package',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff959595),
                      letterSpacing: 0.19999999809265134,
                      height: 1.2857142857142858,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '12-06-2020 to 12-07-2020',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color(0xff959595),
                      letterSpacing: 0.17142856979370116,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 12),
          child: Text(
            'App Settings',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Color(0xff959595),
              letterSpacing: 0.19999999809265134,
              fontWeight: FontWeight.w500,
              height: 1.2857142857142858,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: ListTile(
              title: Text(
                'High resolution',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xff959595),
                  letterSpacing: 0.22857142639160155,
                  height: 1.125,
                ),
                textAlign: TextAlign.left,
              ),
              trailing: Switch(
                  value: _showSwitch3,
                  onChanged: (val) {
                    setState(() {
                      _showSwitch3 = val;
                    });
                  }),
              onTap: () {},
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: ListTile(
            title: Text(
              'App mark',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Color(0xff959595),
                letterSpacing: 0.22857142639160155,
                height: 1.125,
              ),
              textAlign: TextAlign.left,
            ),
            trailing: Switch(
                value: _showSwitch2,
                onChanged: (val) {
                  setState(() {
                    _showSwitch2 = val;
                  });
                }),
            onTap: () {},
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: ListTile(
            title: Text(
              'Grid',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Color(0xff959595),
                letterSpacing: 0.22857142639160155,
                height: 1.125,
              ),
              textAlign: TextAlign.left,
            ),
            trailing: Switch(
                value: _showSwitch1,
                onChanged: (val) {
                  setState(() {
                    _showSwitch1 = val;
                  });
                }),
            onTap: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10),
          child: Text(
            'App info',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Color(0xff959595),
              letterSpacing: 0.19999999809265134,
              fontWeight: FontWeight.w500,
              height: 1.2857142857142858,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: ListTile(
              title: Text(
                'Help Desk',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(0xff959595),
                  letterSpacing: 0.22857142639160155,
                  height: 1.125,
                ),
                textAlign: TextAlign.left,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HelpSupportScreen()));
              },
            ),
          ),
        ),
      ],
    );
  }
}
