import 'package:flutter/material.dart';
import 'package:shopkrr/Screens/bottomBar/bottomProvider.dart';
import 'package:provider/provider.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:shopkrr/Screens/bottomBar/bottomWidget.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavbarModelPage>(builder: (context, BottomNavbarModelPage model, _) {
      return Scaffold(body: model.bottombarScreens[model.bottombarzindex], bottomNavigationBar: Bottombarwidget(model));
    });
  }
}
