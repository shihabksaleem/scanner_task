// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:barcode_scan2/barcode_scan2.dart';

// class AddItemScreen extends StatefulWidget {
//   const AddItemScreen({super.key});

//   @override
//   State<AddItemScreen> createState() => _AddItemScreenState();
// }

// class _AddItemScreenState extends State<AddItemScreen> {
//   String barcodeResult = "Scan a barcode";

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       scanBarcode();
//     });
//   }

//   Future<void> scanBarcode() async {
//     try {
//       var result = await BarcodeScanner.scan();
//       setState(() {
//         barcodeResult = result.rawContent;
//       });

//       if (barcodeResult.isNotEmpty) {
//         // Increment the counter when a scan is successful
//         Provider.of<ScanController>(context, listen: false).addScannedItemToBag(int.parse(barcodeResult.toString()));
//         log(Provider.of<ScanController>(context, listen: false).scannedItems.length.toString());

//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProductAddingScreen(
//               barcode: barcodeResult,
//             ),
//           ),
//         );
//       }
//     } catch (e) {
//       setState(() {
//         barcodeResult = "Failed to scan barcode: $e";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Item')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(barcodeResult, style: const TextStyle(fontSize: 16)),
//           ],
//         ),
//       ),
//     );
//   }
// }
