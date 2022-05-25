import 'package:flutter/material.dart';
import '/components/scrollable_widget.dart';
import '/utilities/utils.dart';
import '/models/devices_models/devices_request.dart';
import '/models/devices_models/devices_response.dart';
import '/api_services/devices_api.dart';

class MyDevices extends StatefulWidget {
  const MyDevices({Key? key}) : super(key: key);

  @override
  State<MyDevices> createState() => _MyDevicesState();
}

class _MyDevicesState extends State<MyDevices> {
  var myDevices = [];
  @override
  void initState() {
    super.initState();
    DevicesRequest devicesRequest = new DevicesRequest();
    devicesRequest.mobileNo = "123456789";
    APIService apiService = APIService();
    apiService.devices(devicesRequest).then((value) {
      if (value != null) {
        if (value.status == 1) {
          setState(() {
            myDevices = value.devices!.cast<Devices>();
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScrollableWidget(child: myDataTable()),
    );
  }

  Widget myDataTable() {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text("Device Id")),
        DataColumn(label: Text("Owner")),
        DataColumn(label: Text("Shared")),
        DataColumn(label: Text("Status")),
        DataColumn(label: Text("Date Buyed")),
      ],
      rows: myDevices
          .map((device) => DataRow(cells: [
                DataCell(Text(device.productId)),
                DataCell(Text(device.originalOwner)),
                DataCell(Text(device.sharedOwner)),
                DataCell(Text(device.status)),
                DataCell(Text(device.dateBuyed))
              ]))
          .toList(),
    );
  }
}

// class Devices extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('My Devices'),
//       ),
//       body: ScrollableWidget(child: myDataTable(),)
//     );
//   }
// }
