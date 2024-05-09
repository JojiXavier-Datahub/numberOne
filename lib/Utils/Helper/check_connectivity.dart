import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkNetworkConnectivity() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult != ConnectivityResult.none;
}
