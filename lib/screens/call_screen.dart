import 'package:flutter/material.dart';
import 'package:video_call_zegocloud/constants.dart';
import 'package:video_call_zegocloud/screens/login_screens.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: MyConstants.appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: MyConstants.appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: LoginScreen.userId,
      userName: LoginScreen.name,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
