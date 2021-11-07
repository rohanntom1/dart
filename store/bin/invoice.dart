import 'line_item.dart';
import 'dart:io';
import 'dart:core';

class Invoice {
  final list = LineItem();
  // List listItems = [];
  final date = DateTime.now();
  List<double> income = [];
  List<double> total = [];

  void billing(List revenue) {
    int input;
    int count = 0;
    //List<double> total;
    while (true) {
      print('\n1. Add Item');
      print('2. Show the Invoice');
      //print('3. Delete Item');
      print('3. Close the Invoice');
      stdout.write('Enter your choice: ');
      input = int.parse(stdin.readLineSync()!);
      if (input == 1) {
        final item = list.lineItem();
        count++; //counts number of items
      } else if (input == 2) {
        final fetch = fetchInvoice(count, revenue);
      }
      // else if(input ==3){
      // final fetch = fetchInvoice(count);
      // int value;
      // stdout.write("Enter the serial number of the item to be deleted: ");
      // value = int.parse(stdin.readLineSync()!);
      //final delete = deleteItem(value)
      //}
      else if (input == 3) {
        final fetch = fetchInvoice(count, revenue);
        print('\n*Invoice completed*');
        print('   *Visit again*\n\n');
        break;
      } else {
        throw Exception('Please enter a valid choice');
      }
    }
  }

  void fetchInvoice(int count, List revenue) {
    double totalAmount = 0;
    final fetchInvoices = list.lists();
    print('\n\n         **INVOICE**');
    print('Date: $date\n');
    for (int i = 0; i <= count - 1; i++) {
      print('Serial number: ${i + 1}');
      print('Product: ${list.productName[i]}');
      print('Quantity: ${list.quantity[i]}');
      print('MRP: ${list.mrp[i]}');
      print('Amount: Rs.${list.amount[i].toStringAsFixed(2)}\n');
    }
    list.amount.forEach((double e) {
      totalAmount = totalAmount + e;
    });
    revenue.add(totalAmount);
    print('Total is: Rs.${totalAmount.toStringAsFixed(2)}');
  }

  // void deleteItem(int value){

  // }

  void totalSale(revenue) {
    double profit;
    double totalSale = 0;
    revenue.forEach((double e) {
      totalSale = totalSale + e;
    });
    profit = totalSale / 1.18;
    print(
        '\nThe total sale is: Rs.${totalSale.toStringAsFixed(2)} and the revenue is: Rs.${profit.toStringAsFixed(2)} after tax\n');
  }
}
