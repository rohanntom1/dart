import 'invoice.dart';
import 'dart:io';

void main() {
  int input;
  List<double> revenue = [];
  final store = new Invoice();
  while (true) {
    print('  ***Store Management***');
    print('1. Create a New Invoice');
    print('2. View Total Sale');
    print('3. QUIT');
    stdout.write('Enter your choice: ');
    input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      store.billing(revenue);
    } else if (input == 2) {
      final sale = store.totalSale(revenue);
    } else if (input == 3) {
      print('  **Quitting**');
      break;
    } else {
      throw Exception('Enter a valid choice');
    }
  }
}
