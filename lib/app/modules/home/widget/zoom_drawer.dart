import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart' as zoomDrawer;
import 'package:pati_nature/app/modules/home/views/home_view.dart';
import 'package:pati_nature/app/modules/home/widget/menuPage.dart';

class ZoomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return zoomDrawer.ZoomDrawer(
      mainScreen: HomeView(),
      menuScreen: MenuPage(),
    );
  }
}
