import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shopkrr/Screens/Address/add_address_screen.dart';
import 'package:shopkrr/constant/app_constant.dart';
import 'package:shopkrr/constant/color_resources.dart';
import 'package:shopkrr/constant/ui_helper.dart';
import 'package:shopkrr/services/navigation.dart';
import 'package:shopkrr/widget/widget.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool isLoading = false;

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
          AppConstants.addressText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),

      // modal_progress_hud_nsn: ^0.5.1 --> Add This to yaml file

      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        progressIndicator: const CircularProgressIndicator(),
        child: Column(
                children: [
                  addressWidget(context),
                  Spacer(),
                  button(
                      context,
                      AppConstants.ddNewAddressText,
                      Theme.of(context).colorScheme.secondary,
                      ColorResources.white, () {
                    push(context, AddNewAddressScreen());
                  }),
                  Helper.heightSizedBox(60)
                ],
              ),
      ),
    );
  }
}

Widget addressWidget(context) {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
    color: Colors.transparent,
    // height: 100,
    width: Helper.mediaQueryWidth(context),
    child: Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: const Color(0xFF21B7CA),
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(color: Theme.of(context).colorScheme.onSurface),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: ColorResources.grey.withOpacity(0.2),
                  offset: Offset(0, 4),
                  blurRadius: 12,
                  spreadRadius: 4)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Brooklyn Warren",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "4517 Washington Ave. Manchester, Kentucky 39495",
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "jessica.hanson@example.com",
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.onSurface),
            ),
            Text(
              "(629) 555-0129",
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
      ),
    ),
  );
}
