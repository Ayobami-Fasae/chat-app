import 'package:flutter/material.dart';

class TabCamera extends StatefulWidget {
  const TabCamera({super.key});

  @override
  State<TabCamera> createState() => _TabCameraState();
}

class _TabCameraState extends State<TabCamera> {
  Widget _buildGalleryBar() {
    final barHeight = 90.0;
    final vertPadding = 10.0;

    return Container(
      height: barHeight, // <-- Parent container with height limit
      child: ListView.builder(
        // <-- Gallery bar which will scroll horizontally
        padding: EdgeInsets.symmetric(vertical: vertPadding),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int _) {
          return Container(
            // <-- Each Image
            padding: EdgeInsets.only(right: 5.0),
            width: 70.0,
            height: barHeight - vertPadding * 2,
            // child: Image(
            //   image: randomImageUrl(),
            //   fit: BoxFit.cover,
            // ),
          );
        },
      ),
    );
  }

  Widget _buildControlBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          // <-- Flash
          color: Colors.white,
          icon: Icon(Icons.flash_auto),
          onPressed: () {},
        ),
        GestureDetector(
          // <-- Take picture
          onTap: () {}, //_onTakePictureButtonPress,
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 5.0,
              ),
            ),
          ),
        ),
        IconButton(
          // <-- Switch camera
          color: Colors.white,
          icon: Icon(Icons.switch_camera),
          onPressed: () {}, // _onSwitchCamera,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [],
    );
  }
}
