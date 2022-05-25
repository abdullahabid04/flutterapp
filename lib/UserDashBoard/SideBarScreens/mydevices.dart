import 'package:flutter/material.dart';
import '/components/scrollable_widget.dart';
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
      border: TableBorder.all(
          color: Colors.blue,
          style: BorderStyle.none,
          width: 2.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      columns: const <DataColumn>[
        DataColumn(
            label: Text("Device Id"),
            tooltip: "Unique product code of your water filteration plant"),
        DataColumn(
            label: Text("Owner"),
            tooltip:
                "Indicates that you are the original owner of this device"),
        DataColumn(
            label: Text("Shared"),
            tooltip: "Indicates that this device is shared with someone"),
        DataColumn(
            label: Text("Status"),
            tooltip: "Indiicates that this device is working properly or not"),
        DataColumn(
            label: Text("Date Buyed"),
            tooltip: "Date and Time when you bought the device"),
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
