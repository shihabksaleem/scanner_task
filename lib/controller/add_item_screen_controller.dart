import 'package:flutter/material.dart';
import 'package:scanner_task/dummy_db.dart';
import 'package:scanner_task/model/product_model.dart';

class AddItemScreenController with ChangeNotifier {
  List<ProductModel> scannedItems = [];

  void addScannedItemToBag(String id) {
    // Check if the item with the given id is already in the scannedItems list
    bool itemExists = scannedItems.any((item) => item.itemId == id);

    // Only add the item if it is not already in the list
    if (!itemExists) {
      try {
        // Add the item to the bag from the DummyDb based on the itemId
        ProductModel product = DummyDb.products.firstWhere(
          (element) => element.itemId == id,
          orElse: () => throw Exception('Product not found'),
        );

        scannedItems.add(product);
      } catch (e) {
        print(e);
      }

      // Notify listeners about the change
      notifyListeners();
    }
  }
}
