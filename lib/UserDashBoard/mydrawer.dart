import 'package:flutter/material.dart';
import 'sidebarroutes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'AquaPure',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/profile_pic.png'))),
          ),
          ListTile(
              leading: Icon(Icons.input),
              title: Text('Scan for quality'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScanForQuality()),
                );
              }),
          ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('My Devices'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDevices()),
                );
              }),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text('Service History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServiceHistory()),
                );
              }),
          ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Billing'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyBilling()),
                );
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Share my devices'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShareMyDevices()),
                );
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Contact us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),
                );
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Referral Program'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReferralProgram()),
                );
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log Out'),
              onTap: () {}),
        ],
      ),
    );
  }
}
