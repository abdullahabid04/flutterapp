import 'package:flutter/material.dart';
import 'mydrawer.dart';
import 'SideBarScreens/mydevices.dart';
import 'SideBarScreens/referralprogram.dart';

class ScanForQuality extends StatelessWidget {
  const ScanForQuality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan For Quality'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('See Water Quality Stats Below'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class MyDevices extends StatelessWidget {
  const MyDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Devices'),
      ),
      drawer: MyDrawer(),
      body: Devices(),
    );
  }
}

class ServiceHistory extends StatelessWidget {
  const ServiceHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Service History'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('List of Services done till now'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class MyBilling extends StatelessWidget {
  const MyBilling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My dfgBills'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('List of Bills'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class ShareMyDevices extends StatelessWidget {
  const ShareMyDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Devices'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('List of owned devices'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyProfile'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Phone, mobile, email and address of user'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Contact Details'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Phone, mobile, email and address of company'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}

class ReferralProgram extends StatelessWidget {
  const ReferralProgram({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Referrals'),
      ),
      drawer: MyDrawer(),
      body: ReferProgram(),
    );
  }
}

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Referrals'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('List of Referred friends'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}
