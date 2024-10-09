import 'package:flutter/material.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/style.dart';
import 'package:shopkrr/constant/typography.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/widget/widget.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _countryController =
      TextEditingController(text: 'United States');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        title: Text(
          AppConstants.newAddressText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppConstants.billingAddressText,
                  style: textLg,
                ),
                _buildEditableField(
                    AppConstants.fullNameText, _fullNameController),
                _buildEditableField(AppConstants.stateText, _stateController),
                _buildEditableField(AppConstants.cityText, _cityController),
                _buildEditableField(
                    AppConstants.pincodeText, _pincodeController),
                _buildEditableField(
                    AppConstants.phoneNumText, _phoneController),
                _buildEditableField(AppConstants.emailTextt, _emailController),
                Helper.heightSizedBox(10),
                // Save Button
                button(
                    context,
                    AppConstants.saveButtonText,
                    Theme.of(context).colorScheme.secondary,
                    ColorResources.white, () {
                  if (_formKey.currentState!.validate()) {
                    // Handle form submission
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Editable TextFormField
  Widget _buildEditableField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.onSurface,
        controller: controller,
        decoration: InputDecoration(
          labelText: label, // Changed prefixText to labelText
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          // Use UnderlineInputBorder for bottom border
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: ColorResources.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: ColorResources.black, width: 2),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
        ),
        style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
