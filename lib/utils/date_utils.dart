import 'package:intl/intl.dart';

DateTime now = DateTime.now();
String serverDateFormat = "yyyy-MM-dd'T'HH:mm:ss";
String appDisplayDateFormat = "yyyy-MM-dd – HH:mm";


String formatDateString(String date) {
  DateFormat dateFormat = DateFormat(serverDateFormat);
  DateTime dateTime = dateFormat.parse(date);
  return DateFormat(appDisplayDateFormat).format(dateTime);
}
