import 'package:get/get.dart';

import 'package:pati_nature/app/modules/destination/bindings/destination_binding.dart';
import 'package:pati_nature/app/modules/destination/views/destination_view.dart';
import 'package:pati_nature/app/modules/home/bindings/home_binding.dart';
import 'package:pati_nature/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DESTINATION,
      page: () => DestinationView(),
      binding: DestinationBinding(),
    ),
  ];
}
