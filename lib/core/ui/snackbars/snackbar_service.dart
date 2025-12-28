import 'package:flutter/material.dart';
import '../../theme/app_theme_color.dart';

class SnackBarService {
  SnackBar snackBarForSuccess(
    String message,
    int duration,
    BuildContext context,
  ) {
    return SnackBar(
      elevation: 0.0,
      duration: Duration(seconds: duration),
      backgroundColor: AppThemeColor.snackBarGreen,
      behavior: SnackBarBehavior.fixed,
      content: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              message.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SnackBar snackBarForError(
    String errorInfo,
    int duration,
    BuildContext context,
  ) {
    return SnackBar(
      elevation: 0.0,
      duration: Duration(seconds: duration),
      backgroundColor: AppThemeColor.snackBarRed,
      behavior: SnackBarBehavior.fixed,
      content: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              errorInfo.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SnackBar snackBarForMessage(
    String message,
    BuildContext context,
    int duration,
  ) {
    return SnackBar(
      elevation: 0.0,
      duration: Duration(seconds: duration),
      backgroundColor: AppThemeColor.snackBarMessage,
      behavior: SnackBarBehavior.fixed,
      content: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              message.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
