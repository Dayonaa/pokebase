import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokebase/constants/app_themes.dart';
import 'package:pokebase/controllers/pokemons_controller.dart';
import 'package:pokebase/graphql/genarated/get_pokemons.graphql.dart';
import 'package:pokebase/utiilities/extensions.dart';
import 'package:pokebase/utiilities/widget_extensions.dart';

class Pokemons extends GetView<PokemonsController> {
  const Pokemons({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.genLabels.length,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: TabBar(
            isScrollable: true,
            dividerHeight: 0,
            tabAlignment: TabAlignment.center,
            tabs: controller.genLabels.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: Obx(() {
          final data = controller.pokemons.value;
          if (data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return TabBarView(
            children: [
              _GenTabView(
                title: 'Gen I',
                pokemonList: controller.queryPokemon("Gen I"),
              ),
              _GenTabView(
                title: 'Gen II',
                pokemonList: controller.queryPokemon("Gen II"),
              ),
              _GenTabView(
                title: 'Gen III',
                pokemonList: controller.queryPokemon("Gen III"),
              ),
              _GenTabView(
                title: 'Gen IV',
                pokemonList: controller.queryPokemon("Gen IV"),
              ),
              _GenTabView(
                title: 'Gen V',
                pokemonList: controller.queryPokemon("Gen V"),
              ),
              _GenTabView(
                title: 'Gen VI',
                pokemonList: controller.queryPokemon("Gen VI"),
              ),
              _GenTabView(
                title: 'Gen VII',
                pokemonList: controller.queryPokemon("Gen VII"),
              ),
              _GenTabView(
                title: 'Gen VIII',
                pokemonList: controller.queryPokemon("Gen VIII"),
              ),
              _GenTabView(
                title: 'Gen IX',
                pokemonList: controller.queryPokemon("Gen IX"),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _GenTabView<T> extends GetView<PokemonsController> {
  final List<Query$GetPokemons$pokemon_list?> pokemonList;
  final String title;

  const _GenTabView({
    super.key,
    required this.pokemonList,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (pokemonList.isEmpty) {
      return Center(child: Text("No Pokémon found for $title"));
    }

    return GridView.builder(
      addAutomaticKeepAlives: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: pokemonList.length,
      itemBuilder: (context, i) {
        final pokemon = pokemonList[i];
        final spriteUrl = pokemon?.sprite.first.front_shiny as String?;
        final typeName = pokemon?.pokemontypes.first.type?.name;

        final colorType = typeName.toPokemonColor();
        final theme = AppThemes.cardTheme(colorType);

        return InkWell(
          onTap: () => controller.gotoDetail(pokemon),
          child: Card(
            color: theme.color,
            shape: theme.shape,
            elevation: theme.elevation,
            shadowColor: theme.shadowColor,
            margin: theme.margin,
            child: Stack(
              alignment: Alignment.center,
              children: [
                spriteUrl.toImageNetwork(),
                Positioned(
                  top: 4,
                  left: 4,
                  child: "${pokemon?.id}"
                      .toText(
                        fontSize: 8,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                      .circleFilled(
                        color: colorType.primary.withValues(alpha: 0.7),
                      ),
                ),
                Positioned(
                  bottom: 4,
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: "${pokemon?.name}".toText(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
