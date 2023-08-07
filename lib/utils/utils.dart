import 'package:flutter/material.dart';
import 'screen_size.dart';

class Utils {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(reBuildExceptionMessage(message)),
        duration: const Duration(seconds: 5),
      ),
    );
  }

  static SizedBox seperatorWidget({double heightRatio = 1}) {
    return SizedBox(
      height: ScreenSize.height * 0.01 * heightRatio,
    );
  }

  static String toSnakeCase(String text) {
    return text.split(' ').map((e) => e.toLowerCase()).toList().join('_');
  }

  static String getAgoTime(DateTime dateTime) {
    Duration duration = DateTime.now().difference(dateTime);
    if (duration.inDays > 365) {
      return '${(duration.inDays / 365).floor()} years ago';
    } else if (duration.inDays > 30) {
      return '${(duration.inDays / 30).floor()} months ago';
    } else if (duration.inDays > 0) {
      return '${duration.inDays} days ago';
    } else if (duration.inHours > 0) {
      return '${duration.inHours} hours ago';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes} minutes ago';
    } else {
      return 'Just now';
    }
  }

  static String getFormattedDateTime(DateTime dateTime) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
  }

  static String reBuildExceptionMessage(String message) {
    if (message.startsWith("Exception:")) {
      return message.substring(11, message.length - 1);
    }
    return message;
  }
}
