import 'package:flutter/material.dart';
import 'package:qatar22/screens/components/drawer2.dart';

class InkWellDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink.shade900),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(top: 15.0)),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/aymen.png"),
                      radius: 40.0,
                    ),
                    Text(
                      'Aymen Elghoul',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              )),
          CustomListTile(
              Icons.person,
              'Profile',
              () => {
                    Navigator.pop(ctxt),
                    Navigator.push(
                        ctxt,
                        new MaterialPageRoute(
                            builder: (ctxt) => new ProfileView()))
                  }),
          CustomListTile(
              Icons.notifications,
              'Notification',
              () => {
                    Navigator.pop(ctxt),
                    Navigator.push(
                        ctxt,
                        new MaterialPageRoute(
                            builder: (ctxt) => new NotificationView()))
                  }),
          CustomListTile(Icons.settings, 'Settings', () => {}),
          CustomListTile(Icons.lock, 'Log Out', () => {}),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    //ToDO
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
            splashColor: Colors.orangeAccent,
            onTap: onTap,
            child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(icon),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                        Text(
                          text,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_right)
                  ],
                ))),
      ),
    );
  }
}
