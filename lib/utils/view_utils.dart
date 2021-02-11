import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_app/res/app_strings.dart';

Widget showLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

void displayMessage(BuildContext context, var message) {
  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(
        SnackBar(duration: Duration(seconds: 2), content: Text(message)));
}

void showAlertDialog(BuildContext context, String message) {
  // Create button
  Widget okButton = FlatButton(
    child: Text(AppStrings.ok),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(AppStrings.appName),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
