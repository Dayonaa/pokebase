import 'package:get/get.dart';
import 'package:pokebase/controllers/controller_obeserver.dart';
import 'package:pokebase/controllers/pokemon_detail_controller.dart';
import 'package:pokebase/controllers/pokemons_controller.dart';
import 'package:pokebase/controllers/setting_controller.dart';
import 'package:pokebase/services/graphql_client.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerObserver(), fenix: true);
    Get.lazyPut(() => GraphqlService(), fenix: true);
    Get.lazyPut(() => PokemonsController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
    // Get.lazyPut(() => PokemonDetailController());
  }
}
