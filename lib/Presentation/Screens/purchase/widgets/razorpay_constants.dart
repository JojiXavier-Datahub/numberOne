
// import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'package:number_one_academy_v2/Presentation/Widgets/app_config.dart';

/// Razorpay Key
/// This is the test Key

// const String razorpayTestKey =
//     'rzp_test_BRd5h0RRcZyOAj'; //Old one- rzp_test_0ZCEqraTdUws9M
// const String razorpayLiveKey = 'rzp_live_vEIxLCpMSRpFpU';

// const String razorpayTestSubscriptionId = 'sub_M7eEmtTCenrIGM';
// const String razorpayLiveDefaultPlanId = 'plan_MNBkWHlqYZO1Fu';
//const subscriptionPlanId = "plan_M9dqZc9j3bj5eg";

class RazorpayKeyFunctions {
  static const String razorpayLiveKey = 'rzp_live_vEIxLCpMSRpFpU';
  static const String razorpayTestKey = 'rzp_test_X24RvTEPngYXrL';
      //'rzp_test_BRd5h0RRcZyOAj'; //Old one- rzp_test_0ZCEqraTdUws9M
  static const String razorpayTestSubscriptionId = 'sub_M7eEmtTCenrIGM';
  static const String razorpayLiveDefaultPlanId = 'plan_MNBkWHlqYZO1Fu';

  static get razorPayKey {
    if (F.name == "dev") {
      return razorpayTestKey;
    } else {
      return razorpayLiveKey;
    }
  }

  static get subscriptionPlanId {
    if (F.name == "dev") {
      return razorpayTestSubscriptionId;
    } else {
      return razorpayLiveDefaultPlanId;
    }
  }
}
