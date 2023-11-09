import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          91944787, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          '234b3dbc2dda60e237446072d9b809292812c8f916fb60b29decd118dd893307', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: '1258077878',
      userName: 'user_vitoria',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (_) => Navigator.of(context).pop(),
    );
  }
}
