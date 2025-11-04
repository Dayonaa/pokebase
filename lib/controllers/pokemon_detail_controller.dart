import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pokebase/graphql/genarated/get_pokemons.graphql.dart';
import 'package:pokebase/utiilities/extensions.dart';

class PokemonDetailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Query$GetPokemons$pokemon_list? pokemon;

  late AnimationController animController;
  RxDouble animatedStat = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    pokemon = Get.arguments as Query$GetPokemons$pokemon_list?;
    controllerCreated();
    animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  void animateStat(int value) {
    animController.reset();
    animController.forward();
    animatedStat.value = 0;
    animController.addListener(() {
      animatedStat.value = value * animController.value;
    });
  }
}
