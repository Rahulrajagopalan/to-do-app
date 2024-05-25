import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'home.dart';

Future<void> checkInternetAndNavigate(
    BuildContext context, String userId) async {
  // var connectivityResult = await Connectivity().checkConnectivity();
  // if (connectivityResult == ConnectivityResult.none) {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text('No internet connection!'),
  //   ));
  // } else {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => UserDetailsPage(userId: userId)),
  //   );
  // }
}