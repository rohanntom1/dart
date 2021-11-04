import 'invoice.dart';
import 'dart:io';

void main() {
  int input;
  do {
    print('  Store Management');
    print('1. Create a New Invoice');
    print('2. View Total Sale');
    print('3. QUIT');
    stdout.write('Enter your choice: ');
    input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      final invoice = new Invoice();
      return invoice.billing();
    } else if (input == 2) {
      final sales = new Invoice();
      double? sale = sales.totalSale(sales.revenue);
    } else if (input == 3) {
      //quit
      print('**Quitting**');
      break;
    } else {
      throw Exception('Enter a valid choice');
    }
  } while (true);
}
