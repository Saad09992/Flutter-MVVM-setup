import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Utils {
  static void toastMessage(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM, // Position at the bottom
    );
  }

  static void flushBarErrorMessage(String msg, BuildContext context) {
    Flushbar(
      message: msg,
      messageText: Text(
        msg,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      icon: const Icon(
        Icons.error_outline,
        color: Colors.redAccent,
        size: 28,
      ),
      borderRadius: BorderRadius.circular(8),
      backgroundColor: Colors.black87,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      duration: const Duration(seconds: 4),
      forwardAnimationCurve: Curves.easeOutExpo,
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
      flushbarPosition: FlushbarPosition.TOP,
    )..show(context);
  }

  static void snackBar(String msg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black87,
        content: Text(
          msg,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        action: SnackBarAction(
          label: 'DISMISS',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
          textColor: Colors.redAccent,
        ),
      ),
    );
  }
}
