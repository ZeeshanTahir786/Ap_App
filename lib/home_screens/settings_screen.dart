import 'package:flutter/material.dart';
import 'package:my_second_ui/home_screens/help_support_screen.dart';
import 'package:my_second_ui/home_screens/images_import_screen.dart';
import 'package:my_second_ui/home_screens/pakage_purchased_setting.dart';

bool _showSwitch = false;
bool _showSwitch2 = false;
bool _showSwitch3 = false;

class SettingsScreen extends StatelessWidget {
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
              'Please Choose Package.',
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
              Container(
                width: 261.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xffffffff),
                  border: Border.all(width: 1.0, color: Color(0xffcbcbcb)),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Container(
                        width: 111.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: Color(0xffdfa798),
                        ),
                        child: Center(
                          child: Text(
                            'Monthly',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              color: Color(0xffffffff),
                              letterSpacing: 0.15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Text(
                        'Yearly',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: const Color(0xff606060),
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        // _createAlertDailog(context);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, top: 8),
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
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
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
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    GestureDetector(
                      child: Text(
                        'Purchase',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xffdfa798),
                          letterSpacing: 0.16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        _createPurchaseDailog(context);
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1 / 2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          );
        });
  }

  _createPurchaseDailog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Google Play',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            actions: <Widget>[
              Divider(
                height: 10,
                thickness: 2,
              ),
              Container(
                width: 326.0,
                height: 49.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color(0xffffffff),
                ),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Logo.png',
                    color: Colors.grey,
                  ),
                  title: Text(
                    'AD APP',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xff3e3e3e),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  trailing: Text(
                    '\$5.6',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Color(0xff3e3e3e),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 10,
                thickness: 2,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.g_translate,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Payment method needed',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color(0xff3e3e3e),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              FlatButton(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 35.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Colors.green.shade900,
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xffffffff),
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  onPressed: () {
                    _createCongratsDialog(context);
                  }),
            ],
          );
        });
  }

  _createCongratsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: [Color(0xff0aedd1), Color(0xff04d7a5)],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: Icon(
                        Icons.verified_user,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Congratulations',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Color(0xa6464646),
                        letterSpacing: 0.18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text(
                      'You successfully purchased a package.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xa6464646),
                        letterSpacing: 0.14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PakagePurchasedSettingScreen()));
                    },
                    child: Text(
                      'Ok',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Color(0xff04d7a5),
                  )
                ],
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
          height: 50.0,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
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
                value: _showSwitch,
                onChanged: (val) {
                  setState(() {
                    _showSwitch = val;
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
