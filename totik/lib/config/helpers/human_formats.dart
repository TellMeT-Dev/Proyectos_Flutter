import 'package:intl/intl.dart';

class HumanFormats {

  static String humanReadableNumber(double number){
    
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 1,
      symbol: '',
    ).format(number);
    
    return formatterNumber;
  }
}