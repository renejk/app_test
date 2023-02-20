import 'package:get/get.dart';

import '../modules/ejercicio_1/bindings/ejercicio_1_binding.dart';
import '../modules/ejercicio_1/views/ejercicio_1_view.dart';
import '../modules/ejercicio_1_2/bindings/ejercicio_1_2_binding.dart';
import '../modules/ejercicio_1_2/views/ejercicio_1_2_view.dart';
import '../modules/ejercicio_2/bindings/ejercicio_2_binding.dart';
import '../modules/ejercicio_2/views/ejercicio_2_view.dart';
import '../modules/ejercicio_3/bindings/ejercicio_3_binding.dart';
import '../modules/ejercicio_3/views/ejercicio_3_view.dart';
import '../modules/ejercicio_4/bindings/ejercicio_4_binding.dart';
import '../modules/ejercicio_4/views/ejercicio_4_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EJERCICIO_1,
      page: () => const Ejercicio1View(),
      binding: Ejercicio1Binding(),
    ),
    GetPage(
      name: _Paths.EJERCICIO_1_2,
      page: () => const Ejercicio12View(),
      binding: Ejercicio12Binding(),
    ),
    GetPage(
      name: _Paths.EJERCICIO_2,
      page: () => const Ejercicio2View(),
      binding: Ejercicio2Binding(),
    ),
    GetPage(
      name: _Paths.EJERCICIO_3,
      page: () => const Ejercicio3View(),
      binding: Ejercicio3Binding(),
    ),
    GetPage(
      name: _Paths.EJERCICIO_4,
      page: () => const Ejercicio4View(),
      binding: Ejercicio4Binding(),
    ),
  ];
}
