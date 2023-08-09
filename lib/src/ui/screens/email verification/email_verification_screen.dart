import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';
import '../../widgets/common_components/app_elevated_button_widget.dart';
import '../../widgets/common_components/app_text_form_field_widget.dart';
import '../../widgets/common_components/screen_header_widget.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  late final TextEditingController _emailController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _emailController = TextEditingController();
    _formKey = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify Email',
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
        child: Column(
          children: [
            spacerH64,
            const ScreenHeader(
              title: 'Welcome Back!',
              subtitle: 'Please Enter Your Email Address',
            ),
            spacerH16,
            Padding(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    AppTextFormFieldWidget(
                      hintText: 'Enter your email',
                      textInputType: TextInputType.emailAddress,
                      controller: _emailController,
                      validator: (email) {
                        final bool isEmailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(email ?? '');
                        if (isEmailValid) {
                          return null;
                        }
                        return 'Enter valid email';
                      },
                    ),
                    spacerH8,
                    AppElevatedButtonWidget(
                      buttonText: 'Next',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
