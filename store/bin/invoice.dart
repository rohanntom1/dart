import 'lists.dart';
import 'dart:io';
import 'dart:core';

import 'store.dart';

class Invoice {
  final list = ListItem();
  // List listItems = [];
  //final date = DateTime.now();
  double revenue = 0;
  List<double> income = [];
  List<double> total = [];

  void billing() {
    int input;
    int count = 0;
    double totalAmount = 0;
    //List<double> total;
    while (true) {
      print('\n1. Add Item');
      print('2. Show the Invoice');
      //print('3. Delete Item');
      print('3. Close the Invoice');
      stdout.write('Enter your choice: ');
      input = int.parse(stdin.readLineSync()!);
      if (input == 1) {
        final item = list.listItem();
        count++;
      } else if (input == 2) {
        final fetch = fetchInvoice(count);
        list.amount.forEach((double e) {
          totalAmount = totalAmount + e;
        });
        print('Total is: Rs.${totalAmount.toStringAsFixed(2)}');
      }
      // else if(input ==3){
      // final fetch = fetchInvoice(count);
      // int value;
      // stdout.write("Enter the serial number of the item to be deleted: ");
      // value = int.parse(stdin.readLineSync()!);
      //final delete = deleteItem(value)
      //}
      else if (input == 3) {
        final fetch = fetchInvoice(count);
        list.amount.forEach((double e) {
          totalAmount = totalAmount + e;
        });
        print('\nTotal is:Rs.${totalAmount.toStringAsFixed(2)}');
        total.add(totalAmount);
        print('\n*Invoice completed*\n');
        break;
      } else {
        throw Exception('Please enter a valid choice');
      }
    }
  }

  void fetchInvoice(int count) {
    final fetchInvoices = list.lists();
    print('\n\n  **INVOICE**');
    for (int i = 0; i <= count - 1; i++) {
      print('Serial number: ${i + 1}');
      print('Product: ${list.productName[i]}');
      print('Quantity: ${list.quantity[i]}');
      print('MRP: ${list.mrp[i]}');
      print('Amount: Rs.${list.amount[i].toStringAsFixed(2)}\n');
    }
  }

  // void deleteItem(int value){

  // }

  double? totalSale() {
    double profit;
    total.forEach((double e) {
      revenue = revenue + e;
    });
    profit = revenue / 1.18;
    print(
        '\nThe total sale is: Rs.$revenue and the profit is: Rs.${profit.toStringAsFixed(2)} after tax\n');
  }
}
