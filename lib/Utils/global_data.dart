import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Utils/Helper/shared_pref.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// LatLng? currentLatLng;
// LatLng? selectedLatLng;
String? deviceToken;
// ProfileModel? profileDetails;
// AppSettingsModel? appSettings;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// cleanGlobalData() {
//   deviceToken = null;
//   profileDetails = null;
// }
extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

subscribedd() async {
  log("mentod is calling//////////////");
    subscribedOrNot = await SharedPrefUtil.getString(subscribed);
    //  subscribedOrNot = '';

}
