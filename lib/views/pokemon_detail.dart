import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokebase/controllers/pokemon_detail_controller.dart';
import 'package:pokebase/utiilities/extensions.dart';
import 'package:pokebase/utiilities/widget_extensions.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PokemonDetailController>(
      init: PokemonDetailController(),
      dispose: (ctrl) {
        ctrl.controllerDeleted();
      },
      builder: (controller) {
        final pokemon = controller.pokemon;
        final types = pokemon!.pokemontypes
            .map((e) => e.type?.name ?? '')
            .toList();
        final stats = pokemon.status;

        return Scaffold(
          appBar: AppBar(
            title: pokemon.name.toText(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: types.first.toPokemonColor().primary,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Sprite
                Hero(
                  tag: "pokemon_${pokemon.id}",
                  child: SizedBox(
                    height: 200,
                    child: (pokemon.sprite.first.front_default as String)
                        .toImageNetwork(),
                  ),
                ),
                const SizedBox(height: 16),

                // Name & ID
                "#${pokemon.id} ${pokemon.name}".toText(),
                const SizedBox(height: 12),

                // Types
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: types.map((t) {
                    final color = t.toPokemonColor();
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: color.primary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: t.toText(),
                    );
                  }).toList(),
                ),

                // Stats
                Column(
                  children: stats.map((s) {
                    final statName = s.stat?.name ?? '';
                    final statValue = s.base_stat;
                    controller.animateStat(statValue);
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          statName.toUpperCase().toText(),
                          Obx(() {
                            return LinearProgressIndicator(
                              borderRadius: BorderRadius.circular(8),
                              value: controller.animatedStat.value / 200,
                              color: statName.toStatColor(),
                              backgroundColor: Colors.grey.shade300,
                              minHeight: 10,
                            );
                          }),
                          Obx(() {
                            return controller.animatedStat.value
                                .toInt()
                                .toString()
                                .toText();
                          }),
                        ],
                      ),
                    );
                  }).toList(),
                ),

                // Other info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _InfoCard(title: "Weight", value: "${pokemon.weight} kg"),
                    _InfoCard(title: "Height", value: "${pokemon.height} m"),
                    _InfoCard(title: "XP", value: "${pokemon.base_experience}"),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String value;

  const _InfoCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [title.toText(), const SizedBox(height: 4), value.toText()],
        ),
      ),
    );
  }
}
