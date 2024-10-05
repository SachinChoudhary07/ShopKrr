import 'package:flutter/material.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/widget/widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController(text: "Savannah");
  final TextEditingController _dobController = TextEditingController(text: "Aug 21, 1992");
  final TextEditingController _phoneController = TextEditingController(text: "(214) 429 0123");
  final TextEditingController _genderController = TextEditingController(text: "Female");
  final TextEditingController _emailController = TextEditingController(text: "Bill.sanders@example.com");
  final TextEditingController _regionController = TextEditingController(text: "United States");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        automaticallyImplyLeading: false,
        title:  Text(
          "PROFILE",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon:  Icon(Icons.arrow_back_ios, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon:  Icon(Icons.more_horiz, color: Theme.of(context).colorScheme.onSurface),
            onPressed: () {
              // Action for more button
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image and Name
              const Row(
                children: [
                  CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage(AppConstants.logoTransparent), // Placeholder for profile image
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Savannah Robertson",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@alexander02",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildEditableField(AppConstants.nameText, _nameController),
              _buildEditableField(AppConstants.dateOfBirthText, _dobController),
              _buildEditableField(AppConstants.phoneNumberText, _phoneController),
              _buildEditableField(AppConstants.genderText, _genderController),
              _buildEditableField(AppConstants.emailText, _emailController),
              _buildEditableField(AppConstants.reginText, _regionController),
              // _buildPasswordField(),
              const SizedBox(height: 30),
              button(
                 AppConstants.saveChangesText,
                Theme.of(context).colorScheme.secondary,
                Colors.white,
                  () {}              )
            ],
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
        cursorColor:Theme.of(context).colorScheme.onSurface,
        controller: controller,
        decoration: InputDecoration(
          labelText: label, // Changed prefixText to labelText
          labelStyle:  TextStyle(
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
        style:  TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }

}
