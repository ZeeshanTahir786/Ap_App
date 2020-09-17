import 'package:flutter/material.dart';
import 'package:my_second_ui/home_screens/settings_screen.dart';

class HomeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
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
    return SafeArea(
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/home_img.jpg.jpg'),
              fit: BoxFit.cover,
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    color: Color(0x42000000),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1 / 2,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 2.0, color: Color(0xb0ffffff)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                '?',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Color(0xffb6b6b8),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.7,
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(top: 25),
                                          child: ListTile(
                                            leading: Icon(
                                              Icons.perm_media,
                                              size: 30,
                                            ),
                                            title: Text(
                                              'Lorem ipsum dolor sakaait amet,  ahjads consectetur adipiscinhag esalit, sed do eiusmod ahjm tempo.\nr imagna aliqua. \nLorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. ',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                color: Color(0xff8c98a8),
                                                fontWeight: FontWeight.w300,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 25,
                                          thickness: 2,
                                        ),
                                        ListTile(
                                            leading: Icon(
                                              Icons.file_download,
                                              size: 40,
                                            ),
                                            title: Text(
                                              'Lorem ipsum dolor sakaait amet,  ahjads consectetur adipiscinhag esalit, sed do eiusmod ahjm tempo.\nr imagna aliqua. \nLorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. ',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                color: Color(0xff8c98a8),
                                                fontWeight: FontWeight.w300,
                                              ),
                                              textAlign: TextAlign.left,
                                            )),
                                        Divider(
                                          height: 25,
                                          thickness: 2,
                                        ),
                                        ListTile(
                                          leading: Icon(
                                            Icons.delete_outline,
                                            size: 40,
                                          ),
                                          title: Text(
                                            'Lorem ipsum dolor sakaait amet,  ahjads consectetur adipiscinhag esalit, sed do eiusmod ahjm tempo.\nr imagna aliqua. \nLorem ipsum sitm dolor sit amet,  ahjads consectetur adipiscing elit, sed do eiusmod tempor imagna aliqua. ',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              color: Color(0xff8c98a8),
                                              fontWeight: FontWeight.w300,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Spacer(),
                                        FlatButton(
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.pink.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(
                                                child: Text(
                                                  'Close',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    color: Color(0xffffffff),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            }),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1 / 2,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.all(Radius.circular(100)),
                          border:
                              Border.all(width: 2.0, color: Color(0xb0ffffff)),
                        ),
                        child: Center(
                          child: IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 15,
                                color: Color(0xb0ffffff),
                              ),
                              onPressed: () {}),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1 / 2,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.all(Radius.circular(100)),
                          border:
                              Border.all(width: 2.0, color: Color(0xb0ffffff)),
                        ),
                        child: Center(
                          child: IconButton(
                              icon: Icon(
                                Icons.more_horiz,
                                size: 18,
                                color: Color(0xb0ffffff),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SettingsScreen()));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Logo.png',
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, 'ImageImportScreen');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.1 / 2 * 1.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Tap + to import images',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Color(0xffdfa798),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
