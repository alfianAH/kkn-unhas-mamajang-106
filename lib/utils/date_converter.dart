import 'package:intl/intl.dart';

class DateConverter{
  /// Convert [date] in date [format]
  /// Example:
  /// [date] : 2021-08-05T14:53:13.000Z
  /// [format] : 'EEEE, dd-MM-yy, HH:mm'
  /// return : Thursday, 05-08-2021, 14:53
  static String convertDate(String date, String format){
    try {
      DateTime dateTime = DateTime.parse(date);
      String dateTimeFormatted = DateFormat(format).format(
          dateTime);
      return '$dateTimeFormatted';
    } catch(e){
      print(e);
      return 'Format tanggal tidak valid';
    }
  }
}