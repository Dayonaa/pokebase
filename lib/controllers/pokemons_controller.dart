import 'package:get/get.dart';
import 'package:pokebase/constants/routes.dart';
import 'package:pokebase/controllers/pokemon_detail_controller.dart';
import 'package:pokebase/graphql/genarated/get_pokemons.graphql.dart';
import 'package:pokebase/services/graphql_client.dart';
import 'package:pokebase/utiilities/extensions.dart';

class PokemonsController extends GetxController {
  final GraphqlService _client = Get.find();
  Rxn<Query$GetPokemons> get pokemons => _client.pokemons;

  final List<String> genLabels = const [
    'Gen I',
    'Gen II',
    'Gen III',
    'Gen IV',
    'Gen V',
    'Gen VI',
    'Gen VII',
    'Gen VIII',
    'Gen IX',
  ];
  List<Query$GetPokemons$pokemon_list?> queryPokemon(String label) {
    switch (label) {
      case "Gen I":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-i")
                .toList() ??
            List.empty();
      case "Gen II":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-ii")
                .toList() ??
            List.empty();
      case "Gen III":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-iii")
                .toList() ??
            List.empty();
      case "Gen IV":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-iv")
                .toList() ??
            List.empty();
      case "Gen V":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-v")
                .toList() ??
            List.empty();
      case "Gen VI":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-vi")
                .toList() ??
            List.empty();
      case "Gen VII":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-vii")
                .toList() ??
            List.empty();
      case "Gen VIII":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-viii")
                .toList() ??
            List.empty();
      case "Gen IX":
        return pokemons.value?.pokemon_list
                .where((e) => e.species?.generation?.name == "generation-ix")
                .toList() ??
            List.empty();
      default:
        return List.empty();
    }
  }

  void gotoDetail(Query$GetPokemons$pokemon_list? pokemon) {
    if (pokemon == null) return;
    Get.toNamed(POKEMON_DETAIL_ROUTES, arguments: pokemon);
  }

  @override
  void onInit() {
    super.onInit();
    controllerCreated();
    _client.streamPokemons();
  }
}
