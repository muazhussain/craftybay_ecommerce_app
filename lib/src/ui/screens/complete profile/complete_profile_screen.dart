import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';
import '../../widgets/common_components/app_elevated_button_widget.dart';
import '../../widgets/common_components/app_text_form_field_widget.dart';
import '../../widgets/common_components/screen_header_widget.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _mobileController;
  late final TextEditingController _cityController;
  late final TextEditingController _addressController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _mobileController = TextEditingController();
    _cityController = TextEditingController();
    _addressController = TextEditingController();
    _formKey = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _mobileController.dispose();
    _cityController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Complete Profile',
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: <Widget>[
                const ScreenHeader(
                  title: 'Complete Profile',
                  subtitle: 'Get started with us with your details',
                ),
                spacerH16,
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      AppTextFormFieldWidget(
                        hintText: 'First Name',
                        validator: (value) {
                          final bool isFirstNameValid =
                              RegExp('[a-zA-Z]').hasMatch(value ?? '');
                          if (isFirstNameValid) {
                            return null;
                          }
                          return 'Enter valid first name';
                        },
                        controller: _firstNameController,
                      ),
                      spacerH16,
                      AppTextFormFieldWidget(
                        hintText: 'Last Name',
                        validator: (value) {
                          final bool isLastNameValid =
                              RegExp('[a-zA-Z]').hasMatch(value ?? '');
                          if (isLastNameValid) {
                            return null;
                          }
                          return 'Enter valid last name';
                        },
                        controller: _lastNameController,
                      ),
                      spacerH16,
                      AppTextFormFieldWidget(
                        hintText: 'Mobile',
                        validator: (value) {
                          final bool isNumberValid =
                              RegExp(r"^\d{11}$").hasMatch(value ?? '');
                          if (isNumberValid) {
                            return null;
                          }
                          return 'Enter valid phone number';
                        },
                        controller: _mobileController,
                      ),
                      spacerH16,
                      AppTextFormFieldWidget(
                        hintText: 'City',
                        validator: (value) {
                          final bool isCityValid =
                              RegExp('[a-zA-Z]').hasMatch(value ?? '');
                          if (isCityValid) {
                            return null;
                          }
                          return 'Enter valid city';
                        },
                        controller: _cityController,
                      ),
                      spacerH16,
                      AppTextFormFieldWidget(
                        hintText: 'Shipping address',
                        maxLines: 3,
                        validator: (value) {
                          final bool isAddressValid =
                              RegExp('[a-zA-Z]').hasMatch(value ?? '');
                          if (isAddressValid) {
                            return null;
                          }
                          return 'Enter valid shipping address';
                        },
                        controller: _addressController,
                      ),
                      spacerH16,
                      AppElevatedButtonWidget(
                        buttonText: 'Complete',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                spacerH16,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
