import 'package:flutter/material.dart';
import '/components/scrollable_widget.dart';
import '/models/services_models/services_request.dart';
import '/models/services_models/services_response.dart';
import '/api_services/services_api.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  var myServices = [];

  @override
  void initState() {
    super.initState();
    ServicesRequest servicesRequest = new ServicesRequest();
    servicesRequest.mobileNo = "12345";
    APIService apiService = APIService();
    apiService.services(servicesRequest).then((value) {
      if (value != null) {
        if (value.status == 1) {
          setState(() {
            myServices = value.services!.cast<Services>();
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ScrollableWidget(
      child: myDataTable(),
    ));
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
            label: Text("Service Type"),
            tooltip: "Indicates the type of service bought"),
        DataColumn(
            label: Text("Price"), tooltip: "Tells the price of the service"),
        DataColumn(
            label: Text("Status"),
            tooltip: "Indiicates that price is paid or not"),
        DataColumn(
            label: Text("Date Buyed"),
            tooltip: "Date and Time when you bought the service"),
      ],
      rows: myServices
          .map((service) => DataRow(cells: [
                DataCell(Text(service.productId)),
                DataCell(Text(service.serviceType)),
                DataCell(Text(service.price)),
                DataCell(Text(service.status)),
                DataCell(Text(service.dateBuyed))
              ]))
          .toList(),
    );
  }
}


// class Services extends StatelessWidget {
//   var myDevices = [];

//   @override
//   void initState() {
//     super.initState();
//     DevicesRequest devicesRequest = new DevicesRequest();
//     devicesRequest.mobileNo = "123456789";
//     APIService apiService = APIService();
//     apiService.services(devicesRequest).then((value) {
//       if (value != null) {
//         if (value.status == 1) {
//           setState(() {
//             myDevices = value.devices!.cast<Devices>();
//           });
//         }
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ScrollableWidget(child: myDataTable(),)
//     );
//   }

//     Widget myDataTable() {
//     return DataTable(
//       border: TableBorder.all(
//           color: Colors.blue,
//           style: BorderStyle.none,
//           width: 2.0,
//           borderRadius: BorderRadius.all(Radius.circular(10.0))),
//       columns: const <DataColumn>[
//         DataColumn(
//             label: Text("Device Id"),
//             tooltip: "Unique product code of your water filteration plant"),
//         DataColumn(
//             label: Text("Owner"),
//             tooltip:
//                 "Indicates that you are the original owner of this device"),
//         DataColumn(
//             label: Text("Shared"),
//             tooltip: "Indicates that this device is shared with someone"),
//         DataColumn(
//             label: Text("Status"),
//             tooltip: "Indiicates that this device is working properly or not"),
//         DataColumn(
//             label: Text("Date Buyed"),
//             tooltip: "Date and Time when you bought the device"),
//       ],
//       rows: myDevices
//           .map((device) => DataRow(cells: [
//                 DataCell(Text(device.productId)),
//                 DataCell(Text(device.originalOwner)),
//                 DataCell(Text(device.sharedOwner)),
//                 DataCell(Text(device.status)),
//                 DataCell(Text(device.dateBuyed))
//               ]))
//           .toList(),
//     );
//   }
// }
