import 'dart:io';
import 'dart:core';

import 'invoice.dart';

class ListItem {
  //List productName=[];
  // late List<double> quantity;
  // late List<double> mrp;
  // late List<double> amount;
  //final item = Invoice().listItems;
  void listItem() {
    double quantities, price, total; //totalAmount;
    String? itemName;
    stdout.write('\nEnter the product: ');
    itemName = stdin.readLineSync();
    if (itemName == null || itemName.isEmpty) {
      throw Exception('Enter a valid product');
    }
    stdout.write('Enter the quantity: ');
    try {
      quantities = double.parse(stdin.readLineSync()!);
    } on FormatException {
      throw Exception('Enter a valid quantity');
    }
    if (quantities <= 0) {
      throw Exception('Enter a valid quantity');
    }

    stdout.write('Enter the price per quantity: ');
    try {
      price = double.parse(stdin.readLineSync()!);
    } on FormatException {
      throw Exception('Enter a valid price');
    }
    total = (quantities * price) * 1.18;
    item.add({
      'productName': [itemName],
      'quantity': ['$quantities'],
      'price': ['$price'],
      'total': ['$total']
    });
    // var insert = ListItem();
    // insert.productName.add(itemName);
    // insert.quantity.add(quantities);
    // insert.mrp.add(price);
    // insert.amount.add(total);
  }
}
