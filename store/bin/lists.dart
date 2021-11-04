import 'dart:io';
import 'dart:core';

import 'invoice.dart';

class ListItem {
  List<String> productName = [];
  List<double> quantity = [];
  List<double> mrp = [];
  List<double> amount = [];
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
    //   'productName': [itemName],
    //   'quantity': ['$quantities'],
    //   'price': ['$price'],
    //   'total': ['$total']
    // });

    //final insert = ListItem();
    this.productName.add(itemName);
    this.quantity.add(quantities);
    this.mrp.add(price);
    this.amount.add(total);
    print('Amount: Rs.${total.toStringAsFixed(2)}');
  }
}
