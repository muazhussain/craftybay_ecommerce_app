import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';
import '../../widgets/common_components/app_elevated_button_widget.dart';
import '../../widgets/common_components/screen_header_widget.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  late final TextEditingController _otpController;

  @override
  void initState() {
    _otpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP Verification',
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: blackColor,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: <Widget>[
                const ScreenHeader(
                  title: 'Enter OTP Code',
                  subtitle: 'A 4 digit OTP Code has been sent',
                ),
                spacerH16,
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    activeColor: primaryColor,
                    activeFillColor: Colors.transparent,
                    inactiveColor: greyColor,
                    inactiveFillColor: Colors.transparent,
                    selectedFillColor: Colors.transparent,
                    errorBorderColor: Colors.red,
                  ),
                  controller: _otpController,
                ),
                spacerH8,
                AppElevatedButtonWidget(
                  buttonText: 'Next',
                  onPressed: () {},
                ),
                spacerH32,
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                      letterSpacing: 0.6,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'This code will be expire in ',
                      ),
                      TextSpan(
                        text: '120s',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                spacerH4,
                TextButton(
                  child: const Text(
                    'Resend Code',
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
