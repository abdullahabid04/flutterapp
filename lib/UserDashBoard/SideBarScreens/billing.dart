import 'package:flutter/material.dart';
import '/components/scrollable_widget.dart';
import '/models/bills_models/bills_request.dart';
import '/models/bills_models/bills_response.dart';
import '/api_services/bills_api.dart';

class Billing extends StatefulWidget {
  const Billing({Key? key}) : super(key: key);

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  var myBills = [];

  @override
  void initState() {
    super.initState();
    BillsRequest billsRequest = new BillsRequest();
    billsRequest.mobileNo = "12345";
    APIService apiService = APIService();
    apiService.bills(billsRequest).then((value) {
      if (value != null) {
        if (value.status == 1) {
          setState(() {
            myBills = value.bills!.cast<Bills>();
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
        DataColumn(label: Text("Bills"), tooltip: "Indicates your total bills"),
        DataColumn(
            label: Text("Rent"), tooltip: "Indicates the rent of device"),
        DataColumn(
            label: Text("Total"),
            tooltip: "Indiicates all your rents and bills"),
        DataColumn(
            label: Text("Status"),
            tooltip: "Indicates that the bills are paid or not"),
        DataColumn(
            label: Text("Date Buyed"),
            tooltip: "Date and Time when you bought the device"),
        DataColumn(
            label: Text("Due Date"), tooltip: "Last date of paying bills"),
      ],
      rows: myBills
          .map((bills) => DataRow(cells: [
                DataCell(Text(bills.productId)),
                DataCell(Text(bills.bills)),
                DataCell(Text(bills.rent)),
                DataCell(Text(bills.total)),
                DataCell(Text(bills.status)),
                DataCell(Text(bills.dateBuyed)),
                DataCell(Text(bills.dueDate)),
              ]))
          .toList(),
    );
  }
}



// class Billing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Billings'),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: DataTable(
//             columns: [],
//             rows: [],
//           ),
//         ),
//       ),
//     );
//   }
// }
