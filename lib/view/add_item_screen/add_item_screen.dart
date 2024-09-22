import 'dart:developer';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner_task/controller/add_item_screen_controller.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        var screenProvider = context.read<AddItemScreenController>();
        // to show if there is no items in the current bag , else will show the bag
        if (screenProvider.scannedItems.isEmpty) {
          await scanBarcode();
        }
      },
    );
    super.initState();
  }

  String barcodeResult = "";
  Future<void> scanBarcode() async {
    try {
      var result = await BarcodeScanner.scan();
      setState(() {
        barcodeResult = result.rawContent;
      });

      if (barcodeResult.isNotEmpty) {
        log(barcodeResult.toString());
        context.read<AddItemScreenController>().addScannedItemToBag(barcodeResult.toString());
      }
    } catch (e) {
      log("Error scanning barcode: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(),
    );
  }
}
