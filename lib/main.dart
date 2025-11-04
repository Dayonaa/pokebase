import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokebase/app_bindings.dart';
import 'package:pokebase/constants/app_themes.dart';
import 'package:pokebase/constants/lang.dart';
import 'package:pokebase/constants/routes.dart';
import 'package:pokebase/views/home.dart';
import 'package:pokebase/views/pokemon_detail.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const PokeApp());
}

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme,
      initialBinding: AppBindings(),
      translations: Lang(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale("ja_JP"),
      // themeMode: ThemeMode.system,
      routes: {
        HOME_ROUTE: (ctx) => Home(),
        POKEMON_DETAIL_ROUTES: (ctx) => PokemonDetail(),
      },
      initialRoute: HOME_ROUTE,
    );
  }
}
