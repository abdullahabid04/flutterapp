import 'package:flutter/material.dart';
import 'sidebarroutes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                margin: EdgeInsets.zero,
                accountName: Text("Abdullah"),
                accountEmail: Text("Abdullah@aquapure.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('assets/images/profile_pic.png'),
                ),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.qr_code_scanner),
                title: const Text('Scan for quality'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScanForQuality()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.devices),
                title: const Text('My Devices'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyDevices()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.miscellaneous_services),
                title: const Text('Service History'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ServiceHistory()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.money),
                title: const Text('Billing'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBilling()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.share),
                title: const Text('Share my devices'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShareMyDevices()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyProfile()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.call),
                title: const Text('Contact us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactUs()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.accessibility),
                title: const Text('Referral Program'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReferralProgram()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
