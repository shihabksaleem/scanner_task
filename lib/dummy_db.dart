import 'package:scanner_task/model/product_model.dart';

class DummyDb {
  // Static list of products, including raw materials and finished Oreo biscuits
  static List<ProductModel> products = [
    // Raw materials for Oreo biscuits
    ProductModel(
      itemId: "RM001",
      name: "Flour",
      quantity: "100 kg",
      isRawMaterial: true,
      batchNumber: "BATCH1001",
    ),
    ProductModel(
      itemId: "RM002",
      name: "Sugar",
      quantity: "50 kg",
      isRawMaterial: true,
      batchNumber: "BATCH1002",
    ),
    ProductModel(
      itemId: "RM003",
      name: "Cocoa",
      quantity: "30 kg",
      number: 15,
      isRawMaterial: true,
      batchNumber: "BATCH1003",
    ),
    ProductModel(
      itemId: "RM004",
      name: "Milk Powder",
      quantity: "25 kg",
      number: 8,
      isRawMaterial: true,
      batchNumber: "BATCH1004",
    ),
    ProductModel(
      itemId: "RM005",
      name: "Butter",
      quantity: "40 kg",
      isRawMaterial: true,
      batchNumber: "BATCH1005",
    ),
    ProductModel(
      itemId: "RM006",
      name: "Baking Soda",
      quantity: "5 kg",
      isRawMaterial: true,
      batchNumber: "BATCH1006",
    ),
    ProductModel(
      itemId: "RM007",
      name: "Vanilla Extract",
      quantity: "10 liters",
      isRawMaterial: true,
      batchNumber: "BATCH1007",
    ),
    // Finished product: Oreo Biscuits
    ProductModel(
      itemId: "P001",
      name: "Oreo Biscuits",
      quantity: "500 packets",
      isRawMaterial: false,
      batchNumber: "OREO202309",
    ),
  ];
}
