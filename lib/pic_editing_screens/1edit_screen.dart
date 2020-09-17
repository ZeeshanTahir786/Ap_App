import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_second_ui/home_screens/images_import_screen.dart';

int height1 = 180;
int height2 = 180;
int height3 = 180;
int height4 = 180;

class EditingsScreen extends StatefulWidget {
  File image1;
  EditingsScreen({this.image1});
  @override
  _EditingsScreenState createState() => _EditingsScreenState();
}

class _EditingsScreenState extends State<EditingsScreen> {
  File isSelected;
  PickedFile image;

  var editorKey;
  getImage() async {
    image = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    // if (image != null) {
    //   File cropped = await ImageCropper.cropImage(
    //       sourcePath: image.path,
    //       aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
    //       compressQuality: 100,
    //       maxHeight: 150,
    //       maxWidth: 100,
    //       compressFormat: ImageCompressFormat.jpg,
    //       androidUiSettings: AndroidUiSettings(
    //         toolbarColor: Colors.black26,
    //         toolbarTitle: 'Cropper',
    //         statusBarColor: Colors.white10,
    //         backgroundColor: Colors.white70,
    //         showCropGrid: true,
    //         hideBottomControls: false,
    //       ));
    //   setState(() {
    //     isSelected = cropped;
    //   });
    // }
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      //getImage(),
      _currentIndex == 0
          ? Column(
              children: [
                Expanded(
                  child: ExtendedImage.asset(
                    'assets/images/background_image.jpg',
                    fit: BoxFit.contain,
                    mode: ExtendedImageMode.editor,
                    extendedImageEditorKey: editorKey,
                    initEditorConfigHandler: (state) {
                      return EditorConfig(
                        maxScale: 8.0,
                        cropRectPadding: EdgeInsets.all(20.0),
                        hitTestSize: 20.0,
                        //  cropAspectRatio: _aspectRatio.aspectRatio
                      );
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  color: Colors.lightBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Crop',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Rotate right',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Rotate Left',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Cross',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Brightness',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            )
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/Select_1Image.jpg'),
                    fit: BoxFit.cover,
                    color: Colors.black54,
                    colorBlendMode: BlendMode.darken,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7 / 2,
                    color: Colors.black12,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Color Effect',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 17,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Done',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 17,
                                  color: Color(0xffff2d55),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.orange,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.yellowAccent,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.lightBlue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.blueGrey,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.purple,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.purpleAccent,
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 26.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.0),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.0, -1.0),
                                    end: Alignment(0.0, 1.0),
                                    colors: [
                                      Color(0xffe64a4a),
                                      Color(0xff42f5e1),
                                      Color(0xff4694ff),
                                      Color(0xffff457e),
                                      Color(0xffffdb45),
                                      Color(0xff00c388)
                                    ],
                                    stops: [0.0, 0.0, 0.276, 0.552, 0.768, 1.0],
                                  ),
                                  border: Border.all(
                                      width: 0.1, color: Color(0xff707070)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                inactiveTrackColor: Color(0xFF8D8E90),
                                activeTrackColor: Colors.blueGrey,
                                thumbColor: Colors.white,
                                overlayColor: Colors.blueGrey,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 22.0)),
                            child: Slider(
                                label: 'Hue',
                                value: height1.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height1 = newValue.round();
                                  });
                                }),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E90),
                              activeTrackColor: Colors.redAccent,
                              thumbColor: Colors.white,
                              overlayColor: Colors.red.shade200,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 22.0)),
                          child: Slider(
                              label: 'Hue',
                              value: height2.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  height2 = newValue.round();
                                });
                              }),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xFF8D8E90),
                              activeTrackColor: Colors.yellowAccent,
                              thumbColor: Colors.white,
                              overlayColor: Colors.yellow.shade100,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 22.0)),
                          child: Slider(
                              label: 'Hue',
                              value: height3.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  height3 = newValue.round();
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/Select_1Image.jpg'),
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.black12,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E90),
                          activeTrackColor: Colors.blueGrey,
                          thumbColor: Colors.white,
                          overlayColor: Colors.blueGrey,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 22.0)),
                      child: Slider(
                          label: height1.toString(),
                          value: height1.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height1 = newValue.round();
                            });
                          }),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.brightness_6,
                            size: 40,
                            color: Colors.pinkAccent,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.brightness_5,
                            size: 40,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.details,
                            size: 40,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.highlight,
                            size: 40,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.star_half,
                            size: 40,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Brightness',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Contrast',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Sharpen',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Highlights',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Shadows',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.cancel,
                              size: 40,
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(
                              Icons.assignment_turned_in,
                              size: 40,
                              color: Colors.lightBlue,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/Select_1Image.jpg'),
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7 / 2,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                      Text(
                        'Auto Affects ',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 17,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Text(
                        'Done',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 17,
                          color: Color(0xffff2d55),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.23,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Brightness',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Contrast',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Sharpen',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Highlight',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height1.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height1 = newValue.round();
                                    });
                                  }),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height2.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height2 = newValue.round();
                                    });
                                  }),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height3.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height3 = newValue.round();
                                    });
                                  }),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height4.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height4 = newValue.round();
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/Select_1Image.jpg'),
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'TEMP',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            color: Color(0xff333333),
                          ),
                          child: Text(
                            'B & W',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 12,
                              color: Color(0xb9ffffff),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.23,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Vibrance',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Saturation',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Temp',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height1.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height1 = newValue.round();
                                    });
                                  }),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height2.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height2 = newValue.round();
                                    });
                                  }),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height3.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height3 = newValue.round();
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/Select_1Image.jpg'),
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'TEMP',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 17,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            color: Color(0xff333333),
                          ),
                          child: Text(
                            'B & W',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 12,
                              color: Color(0xb9ffffff),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.23,
                          width: MediaQuery.of(context).size.width * 0.3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Vibrance',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Saturation',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Temp',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  color: Color(0xff666666),
                                  letterSpacing: -0.336,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height1.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height1 = newValue.round();
                                    });
                                  }),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height2.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height2 = newValue.round();
                                    });
                                  }),
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: Color(0xFF8D8E90),
                                  activeTrackColor: Colors.redAccent,
                                  thumbColor: Colors.white,
                                  overlayColor: Colors.red.shade200,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0),
                                  overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 22.0)),
                              child: Slider(
                                  label: 'Hue',
                                  value: height3.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newValue) {
                                    setState(() {
                                      height3 = newValue.round();
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ImageImportScreen()));
            }),
        actions: [
          IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageImportScreen()));
              }),
        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Colors.pinkAccent),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.crop,
              ),
              backgroundColor: Colors.white,
              title: Text(
                'Crop',
                style: TextStyle(color: Colors.pinkAccent),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_6),
              backgroundColor: Colors.white,
              title: Text(
                'Brightness',
                style: TextStyle(color: Colors.pinkAccent),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.tune),
              backgroundColor: Colors.white,
              title: Text(
                'Preference',
                style: TextStyle(color: Colors.pinkAccent),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.color_lens),
              backgroundColor: Colors.white,
              title: Text(
                'Colors',
                style: TextStyle(color: Colors.pinkAccent),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.toll),
              backgroundColor: Colors.white,
              title: Text(
                'Lenz',
                style: TextStyle(color: Colors.pinkAccent),
              )),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
