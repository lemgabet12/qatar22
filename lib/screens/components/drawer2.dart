import 'package:flutter/material.dart';
import 'package:qatar22/screens/components/drawer.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: InkWellDrawer(),
      appBar: new AppBar(
        title: new Text("Notifications"),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    height: 130.0,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage("assets/images/qatar3.png"),
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: <Widget>[
                Text('Hello Bhupesh!!!'),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 22.0, left: 42.0, right: 42.0),
                  child: Center(
                      child: Text('Welcome to your Notification View!!!')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: InkWellDrawer(),
      appBar: new AppBar(
        title: new Text("Profile"),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    height: 130.0,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage("assets/images/qatar3.png"),
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: <Widget>[
                Text('Hello Bhupesh!!!'),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 22.0, left: 42.0, right: 42.0),
                  child: Center(
                      child: Text(
                          'Welcome to your Profile, Although, you do not have much to say in your profile apart from your cool image!!!')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height,
    );
    path.quadraticBezierTo(
      size.width - (size.width / 4),
      size.height,
      size.width,
      size.height - 80,
    );
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
