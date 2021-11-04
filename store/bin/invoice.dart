import 'lists.dart';
import 'dart:io';
import 'dart:core';

class Invoice {
  final list = ListItem();
  // List listItems = [];
  //final date = DateTime.now();
  double revenue = 0;

  void billing() {
    int input;
    int count = 0;
    double totalAmount = 0;
    //List<double> total;
    do {
      print('\n1. Add Item');
      print('2. Show the Invoice');
      //print('3. Delete Item');
      print('3. Close the Invoice');
      stdout.write('Enter your choice: ');
      input = int.parse(stdin.readLineSync()!);
      if (input == 1) {
        final item = list.listItem();
        count++;
        // final price = ListItem().amount;

        // for (int i = 0; i <= count; i++) {
        //   totalAmount = totalAmount + (price[i]);
        // }
        // //print(totalAmount);
      } else if (input == 2) {
        final fetch = fetchInvoice(count);
        list.amount.forEach((double e) {
          totalAmount = totalAmount + e;
        });
        print('Total is:$totalAmount');
        revenue = revenue + totalAmount;
      }
      // else if(input ==3){
      // final fetch = fetchInvoice(count);
      // int value;
      // stdout.write("Enter the serial number of the item to be deleted: ");
      // value = int.parse(stdin.readLineSync()!);
      // }
      else if (input == 3) {
        final fetch = fetchInvoice(count);
        list.amount.forEach((double e) {
          totalAmount = totalAmount + e;
        });
        print('Total is:$totalAmount');

        print('\n*Invoice completed*\n');
        break;
      } else {
        throw Exception('Please enter a valid choice');
      }
    } while (true);
  }

  void fetchInvoice(count) {
    final fetchInvoice = list.listItem();
    for (int i = 0; i <= count; i++) {
      print('Serial number: $count');
      print('Product: ${list.productName[i]}');
      print('Quantity: ${list.quantity[i]}');
      print('MRP: ${list.mrp[i]}');
      print('Amount: ${list.amount[i]}');
    }
  }

  double? totalSale(revenue) {
    double profit;
    profit = revenue / 1.18;
    print('The total sale is: $revenue and the profit is: $profit');
  }
}
