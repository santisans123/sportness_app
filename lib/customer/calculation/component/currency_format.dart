import 'package:intl/intl.dart';

class CurrencyFormat {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat numberFormatter = NumberFormat.decimalPattern();
    numberFormatter.minimumFractionDigits = decimalDigit;
    numberFormatter.maximumFractionDigits = decimalDigit;
    return numberFormatter.format(number);
  }
}