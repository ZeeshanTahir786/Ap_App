import 'package:flutter/material.dart';
import 'package:my_second_ui/after_splash_screen/screen1.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int pageIndex = 0;
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_image.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Expanded(
                child: PageView(
              controller: _controller,
              children: <Widget>[
                Screen1(
                  pageIndex: pageIndex,
                ),
                Screen1(
                  pageIndex: pageIndex,
                ),
                Screen1(
                  pageIndex: pageIndex,
                ),
              ],
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
            )),
            Column(children: <Widget>[
              pageDoted(),
              SizedBox(
                height: 20,
              ),
              bottomButtons(),
              SizedBox(
                height: 20,
              ),
            ])
          ],
        ),
      ),
    );
  }

  Widget bottomButtons() {
    return pageIndex == 0
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'HomeScreen1');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.1 / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Color(0xffdfa798),
                    ),
                    child: Center(
                      child: Text(
                        'Skip now',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1 / 3,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.10,
                height: MediaQuery.of(context).size.height * 0.1 / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Color(0xffdfa798),
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _controller.jumpToPage(1);
                    }),
              ),
            ],
          )
        : pageIndex == 1
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1 / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Color(0xffdfa798),
                    ),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _controller.jumpToPage(0);
                        }),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1 / 3,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1 / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Color(0xffdfa798),
                      ),
                      child: Center(
                        child: Text(
                          'Skip now',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1 / 3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1 / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Color(0xffdfa798),
                    ),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _controller.jumpToPage(2);
                        }),
                  ),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: MediaQuery.of(context).size.height * 0.1 / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Color(0xffdfa798),
                    ),
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _controller.jumpToPage(1);
                        }),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1 / 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'HomeScreen1');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1 / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Color(0xffdfa798),
                      ),
                      child: Center(
                        child: Text(
                          'Done',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1 / 3,
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.10,
                  //   height: MediaQuery.of(context).size.height * 0.1 / 2,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(6.0),
                  //     color: Color(0xffdfa798),
                  //   ),
                  //   child: IconButton(
                  //       icon: Icon(
                  //         Icons.arrow_forward_ios,
                  //         color: Colors.white,
                  //       ),
                  //       onPressed: () {
                  //         Navigator.pushReplacementNamed(
                  //             context, 'HomeScreen1');
                  //       }),
                  // ),
                ],
              );
  }

  Widget pageDoted() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 40.0,
          height: 4.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: pageIndex == 0 ? Color(0xffdfa798) : Color(0xffb3b7b8),
          ),
          child: SizedBox(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1 / 2,
        ),
        Container(
          width: 40.0,
          height: 4.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: pageIndex == 1 ? Color(0xffdfa798) : Color(0xffb3b7b8),
          ),
          child: SizedBox(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1 / 2,
        ),
        Container(
          width: 40.0,
          height: 4.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: pageIndex == 2 ? Color(0xffdfa798) : Color(0xffb3b7b8),
          ),
          child: SizedBox(),
        ),
      ],
    );
  }
}
