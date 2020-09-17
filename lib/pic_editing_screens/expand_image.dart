import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class ExpandedImage extends StatefulWidget {
  // File image2;
  //  ExpandedImage({this.image2});
  @override
  _ExpandedImageState createState() => _ExpandedImageState();
}

class _ExpandedImageState extends State<ExpandedImage> {
  var editorKey;

  // File imageFile;
  // String fileName;
  // List<Filter> filters = presetFiltersList;
  // Future getImage(context) async {
  //   imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
  //   fileName = basename(imageFile.path);
  //   var image = imageLib.decodeImage(imageFile.readAsBytesSync());
  //   image = imageLib.copyResize(image, width: 600);
  //   Map imagefile = await Navigator.push(
  //     context,
  //     new MaterialPageRoute(
  //       builder: (context) => PhotoFilterSelector(
  //         title: Text("Photo Filter Example"),
  //         image: image,
  //         filters: presetFiltersList,
  //         filename: fileName,
  //         loader: Center(child: CircularProgressIndicator()),
  //         fit: BoxFit.contain,
  //       ),
  //     ),
  //   );
  //   setState(() {
  //     imageFile = imagefile['image_filtered'];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // PickedFile image;
    // getImage() async {
    //   image = await ImagePicker().getImage(
    //     source: ImageSource.gallery,
    //   );
    // }
    return Scaffold(
        body: ExtendedImage.asset(
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
    ));
  }
}

//       body: SizedBox.expand(
// // child: Hero(
// // tag: heroTag,
//         child: ExtendedImageSlidePage(
//           slideAxis: SlideAxis.both,
//           slideType: SlideType.onlyImage,
//           child: ExtendedImage(
// //disable to stop image sliding off page && entering dead end without back button.
// //setting to false means it won't slide at all.
//             enableSlideOutPage: true,
//             mode: ExtendedImageMode.gesture,
//             initGestureConfigHandler: (state) => GestureConfig(
//               minScale: 1.0,
//               animationMinScale: 0.8,
//               maxScale: 3.0,
//               animationMaxScale: 3.5,
//               speed: 1.0,
//               inertialSpeed: 100.0,
//               initialScale: 1.0,
//               inPageView: false,
//             ),30
// // onDoubleTap: ?  zoom in on image
//             fit: BoxFit.scaleDown,
//             image: AssetImage('assets/images/background_image.jpg'),
//              AssetImage(
//                image == null
//                    ? AssetImage('assets/images/background_image.jpg')
//                    : FileImage(widget.image2),
//              ),
//           ),
//         ),
//       ),
