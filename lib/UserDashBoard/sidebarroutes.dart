import 'package:flutter/material.dart';
import 'mydrawer.dart';
import 'SideBarScreens/mydevices.dart';
import 'SideBarScreens/referralprogram.dart';
import 'SideBarScreens/servicehistory.dart';
import 'SideBarScreens/billing.dart';
import 'SideBarScreens/myprofile.dart';
import 'SideBarScreens/sharemydevices.dart';
import 'SideBarScreens/contactus.dart';

class ScanForQuality extends StatelessWidget {
  const ScanForQuality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scan For Quality'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
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

class OwnedDevices extends StatelessWidget {
  const OwnedDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Devices'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: MyDevices(),
    );
  }
}

class ServiceHistory extends StatelessWidget {
  const ServiceHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Service History'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: MyServices(),
    );
  }
}

class MyBilling extends StatelessWidget {
  const MyBilling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Bills'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: Billing(),
    );
  }
}

class ShareMyDevices extends StatelessWidget {
  const ShareMyDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Devices'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: ShareDevice(),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MyProfile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: Profile(),
    );
  }
}

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Company Contact Details'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => {Navigator.of(context).pop()},
          ),
        ),
        body: Contact());
  }
}

class ReferralProgram extends StatelessWidget {
  const ReferralProgram({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Referrals'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => {Navigator.of(context).pop()},
        ),
      ),
      body: ReferProgram(),
    );
  }
}
