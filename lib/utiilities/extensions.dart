import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokebase/constants/enumerations.dart';
import 'package:pokebase/controllers/controller_obeserver.dart';

extension StringToLogger on String? {
  void toLogger() {
    debugPrint("$this", wrapWidth: 1024);
  }
}

extension ControllerLifecycleExtension<T> on T {
  void controllerCreated() {
    Get.find<ControllerObserver>().onControllerCreated(this);
  }

  void controllerDeleted() {
    Get.find<ControllerObserver>().onControllerDeleted<T>();
  }
}

extension GetXDeleteExtension<T> on T {
  void deletingControllerForce() {
    Get.delete<T>(force: true);
  }
}

extension PokemonStatColorExtension on String {
  Color toStatColor() {
    switch (toUpperCase()) {
      case "HP":
        return PokemonStatsColor.HP.color;
      case "ATTACK":
        return PokemonStatsColor.ATTACK.color;
      case "DEFENSE":
        return PokemonStatsColor.DEFENSE.color;
      case "SPECIAL-ATTACK":
      case "SPECIAL_ATTACK":
        return PokemonStatsColor.SPECIAL_ATTACK.color;
      case "SPECIAL-DEFENSE":
      case "SPECIAL_DEFENSE":
        return PokemonStatsColor.SPECIAL_DEFENSE.color;
      case "SPEED":
        return PokemonStatsColor.SPEED.color;
      default:
        return Colors.grey;
    }
  }
}

extension PokemonColor on String? {
  PokemonColorType toPokemonColor() {
    switch (this?.toLowerCase().trim()) {
      case 'fire':
        return PokemonColorType.fire;
      case 'water':
        return PokemonColorType.water;
      case 'grass':
        return PokemonColorType.grass;
      case 'electric':
        return PokemonColorType.electric;
      case 'psychic':
        return PokemonColorType.psychic;
      case 'normal':
        return PokemonColorType.normal;
      case 'dark':
        return PokemonColorType.dark;
      case 'fairy':
        return PokemonColorType.fairy;
      default:
        return PokemonColorType.normal;
    }
  }
}
