
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Config/pages.dart';
import '../../../Utils/Helper/check_connectivity.dart';
import '../../../Utils/Helper/show_snackbar.dart';
import '../../../Utils/colors.dart';

class ErrorScreen extends StatelessWidget {
  final String text;
  final String image;
  const ErrorScreen.network({super.key})
      : text = 'Could not connect to the internet. Please check your network',
        image = "assets/images/noNetwork.png";
  const ErrorScreen.server({super.key})
      : text =
            'We are experiencing server error please try again after some time',
        image = "assets/images/serverError.png";

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              constraints: BoxConstraints(
                maxHeight: ScreenUtil().screenHeight / 3,
              ),
              child: Image.asset(image)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(text,
                textAlign: TextAlign.center,
                style:green18w700style),
          ),
          ValueListenableBuilder(
              valueListenable: isLoading,
              builder: (context, value, _) {
                return isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: secondaryColor,
                        ),
                      )
                    : InkWell(
                        onTap: () async {
                          isLoading.value = true;
                          if (await checkNetworkConnectivity()) {
                            Future.delayed(Duration.zero).then((value) {
                              isLoading.value = false;
                              String route = ModalRoute.of(context)
                                  ?.settings
                                  .arguments as String;
                              Navigator.pushReplacement(
                                  context,
                                  AppPages.generateRouteSettings(
                                      RouteSettings(name: route)));
                            });
                          } else {
                            isLoading.value = false;
                            if (context.mounted) {
                              SnackBarUtil.showWithContext(
                                  context: context,
                                  message: "Could not connect to the internet");
                            }
                          }
                        },
                        child: const Text('Try again',
                            textAlign: TextAlign.center,
                            style: green18w700style),
                      );
              }),
        ],
      ),
    );
  }
}
