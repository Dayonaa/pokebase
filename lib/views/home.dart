import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:pokebase/constants/enumerations.dart';
import 'package:pokebase/constants/poke_icons.dart';
import 'package:pokebase/utiilities/widget_extensions.dart';
import 'package:pokebase/views/tab_views/movies.dart';
import 'package:pokebase/views/tab_views/news.dart';
import 'package:pokebase/views/tab_views/pokemons.dart';
import 'package:pokebase/views/tab_views/settings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "POKEBASE".toText(fontSize: 20)),
      body: PersistentTabView(
        handleAndroidBackButtonPress: false,
        tabs: [
          PersistentTabConfig(
            screen: Pokemons(),
            item: ItemConfig(
              icon: Icon(PokeIcons.pokeball),
              title: "Pokemons",
              activeForegroundColor: PokemonColorType.electric.primary,
              activeColorSecondary: PokemonColorType.electric.secondary
                  .withValues(alpha: 0.2),
              // inactiveForegroundColor: PokemonColorType.electric.primary,
            ),
          ),
          PersistentTabConfig(
            screen: News(),
            item: ItemConfig(
              icon: Icon(PokeIcons.evo_ball),
              title: "Evolves",
              activeForegroundColor: PokemonColorType.grass.primary,
              activeColorSecondary: PokemonColorType.grass.primary.withValues(
                alpha: 0.2,
              ),
              // inactiveForegroundColor: PokemonColorType.grass.primary,
            ),
          ),
          PersistentTabConfig(
            screen: Movies(),
            item: ItemConfig(
              icon: Icon(PokeIcons.news),
              title: "News",
              activeForegroundColor: PokemonColorType.fairy.primary,
              activeColorSecondary: PokemonColorType.fairy.primary.withValues(
                alpha: 0.2,
              ),
              // inactiveForegroundColor: PokemonColorType.fairy.primary,
            ),
          ),
          PersistentTabConfig(
            screen: Settings(),
            item: ItemConfig(
              icon: Icon(PokeIcons.pda),
              title: "Settings",
              activeForegroundColor: Colors.cyan,
              activeColorSecondary: Colors.cyan.withValues(alpha: 0.2),
              // inactiveForegroundColor: CupertinoColors.activeBlue,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style2BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: NavBarDecoration(
            gradient: Get.isDarkMode ? PokemonColorType.dark.gradient : null,
            border: Border.all(
              width: 0.2,
              color: Get.isDarkMode ? Colors.lightBlue : Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}
