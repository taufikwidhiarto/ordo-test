import 'package:intl/intl.dart';

class FormatedUtils {
  static String getShortedNumber(number) {
    return NumberFormat.compact().format(number).toLowerCase();
  }

  static String getCurrency(number) {
    return NumberFormat.currency(
            locale: "id-ID", decimalDigits: 0, symbol: "Rp ")
        .format(number);
  }
}
