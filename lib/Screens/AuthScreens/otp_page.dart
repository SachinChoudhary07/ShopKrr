import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shopkrr/Screens/bottomBar/bottombar.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/dimension.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/services/navigation.dart';
import 'package:shopkrr/widget/widget.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key, this.number});
  final String? number;

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otpController = TextEditingController();
  bool isVerifying = false;

  @override
  Widget build(BuildContext context) {
    // print(widget.number);
    // print("numberrr");
    final theme = Theme.of(context); // Accessing theme data
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        title: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left_rounded,
              size: 40,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50),
            Text(
              "${AppConstants.otpsentto} ${widget.number ?? 9876543210}",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: Dimensions.fontSizeExtraDefaultLarge),
              softWrap: true,
            ),
            Helper.heightSizedBox(
              Helper.mediaQueryHeight(context, 1 * .01),
            ),
            PinCodeTextField(
              length: 4,
              appContext: context,
              keyboardType: TextInputType.phone,
              backgroundColor: Colors.transparent,
              // hintCharacter: "0",
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                borderWidth: 0,
                selectedBorderWidth: 0,
                inactiveBorderWidth: 0,
                activeBorderWidth: 0.0,
                // borderRadius: BorderRadius.circular(25),
                fieldHeight: Helper.mediaQueryHeight(context, 0.12),
                fieldWidth: Helper.mediaQueryWidth(context, 0.2),
                activeColor: Theme.of(context).colorScheme.onSurface,
                activeFillColor:
                    Theme.of(context).colorScheme.onPrimaryContainer,
                selectedColor: Theme.of(context).colorScheme.onPrimaryContainer,
                selectedFillColor:
                    Theme.of(context).colorScheme.onPrimaryContainer,
                inactiveColor: Theme.of(context).colorScheme.onSurface,
                inactiveFillColor:
                    Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              enableActiveFill: true,
              onCompleted: (v) {
                // _submitCode(v);
              },
              onChanged: (value) {
                //debugPrint(value);
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(0),
              child: button(context, AppConstants.submit,
                  theme.colorScheme.secondary, theme.colorScheme.tertiary, () {
                push(context, const BottomBarPage());
              }),
            ),
            Helper.heightSizedBox(60),
          ],
        ),
      ),
    );
  }
}
