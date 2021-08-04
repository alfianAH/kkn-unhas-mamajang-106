import 'package:intl/intl.dart';

class DateConverter{
  static String convertDate(String formattedString){
    try {
      DateTime dateTime = DateTime.parse(formattedString);
      String dateTimeFormatted = DateFormat('EEEE, dd-MM-yy, HH:mm').format(
          dateTime);
      return '$dateTimeFormatted';
    } catch(e){
      print(e);
      return 'Format tanggal tidak valid';
    }
  }
}