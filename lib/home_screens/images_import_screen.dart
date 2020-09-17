import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_second_ui/home_screens/gallery_import_images.dart';
import 'package:my_second_ui/home_screens/settings_screen.dart';
import 'package:my_second_ui/pic_editing_screens/1edit_screen.dart';
import 'package:my_second_ui/pic_editing_screens/expand_image.dart';
import 'package:path/path.dart';
import 'package:photofilters/photofilters.dart';
import 'package:image/image.dart' as imageLib;
import 'package:image_picker/image_picker.dart';

class ImageImportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  File imageFile;
  String fileName;
  List<Filter> filters = presetFiltersList;
  Future getImage(context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    fileName = basename(imageFile.path);
    var image = imageLib.decodeImage(imageFile.readAsBytesSync());
    image = imageLib.copyResize(image, width: 600);
    Map imagefile = await Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => PhotoFilterSelector(
          title: Text("Photo Filter Example"),
          image: image,
          filters: presetFiltersList,
          filename: fileName,
          loader: Center(child: CircularProgressIndicator()),
          fit: BoxFit.contain,
        ),
      ),
    );
    setState(() {
      imageFile = imagefile['image_filtered'];
    });
  }

  @override
  Widget build(BuildContext context) {
    File isSelected;
    bool inProcess = false;

    Widget getImageWidget() {
      if (isSelected != null) {
        return Image.file(
          isSelected,
          height: 150,
          width: 100,
          fit: BoxFit.cover,
        );
      } else {
        return Image.asset(
          'assets/images/Select_1Image.jpg',
          height: 150,
          width: 100,
          fit: BoxFit.cover,
        );
      }
    }

    return SafeArea(
      child: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1 / 2,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 2.0, color: const Color(0xb0666666)),
                          ),
                          child: Center(
                            child: Text(
                              '?',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
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
                      GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1 / 2,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 2.0, color: Color(0xb0666666)),
                          ),
                          child: Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Color(0xff808080),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        onTap: () async {
                          // getImage(context);

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditingsScreen()));
                          // ExtendedImage.network(
                          //   imageTestUrl,
                          //   fit: BoxFit.contain,
                          //   mode: ExtendedImageMode.editor,
                          //   extendedImageEditorKey: editorKey,
                          //   initEditorConfigHandler: (state) {
                          //     return EditorConfig(
                          //         maxScale: 8.0,
                          //         cropRectPadding: EdgeInsets.all(20.0),
                          //         hitTestSize: 20.0,
                          //         cropAspectRatio: _aspectRatio.aspectRatio);
                          //   },
                          // );
                        },
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1 / 2,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          border:
                              Border.all(width: 2.0, color: Color(0xb0666666)),
                        ),
                        child: Center(
                          child: IconButton(
                              icon: Icon(
                                Icons.more_horiz,
                                size: 18,
                                color: Color(0xff808080),
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
                Expanded(
                  child: GridView.builder(
                    itemCount: 18,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: Container(
                          height: 150,
                          width: 120,
                          child: Image.asset(
                            'assets/images/Select_${index + 1}Image.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: () {
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => EditingsScreen()));
                        },
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4, top: 3),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.perm_media,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GalleryImportImages()));
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.file_download,
                                color: Colors.grey,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.grey,
                              ),
                              onPressed: () {}),
                        ],
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
