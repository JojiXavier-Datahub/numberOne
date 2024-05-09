import 'package:flutter/material.dart';

class SnackBarUtil {
  static void show({required String message, int duration = 1}) {
    final GlobalKey<ScaffoldMessengerState> snackbarKey =
        GlobalKey<ScaffoldMessengerState>();
    final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
        GlobalKey<ScaffoldMessengerState>();
    scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: duration),
      ),
    );
  }

  static void showWithContext(
      {required BuildContext context,
      required String message,
      int duration = 1}) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: duration),
    ));
  }
}
