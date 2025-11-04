import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:pokebase/graphql/genarated/get_pokemons.graphql.dart';
import 'package:pokebase/utiilities/extensions.dart';

class GraphqlService extends GetxService {
  late final GraphQLClient _client;

  final pokemons = Rxn<Query$GetPokemons>();
  final isLoading = false.obs;
  final errorMessage = RxnString();

  @override
  void onInit() {
    super.onInit();
    controllerCreated();
    final httpLink = HttpLink('https://graphql.pokeapi.co/v1beta2');
    _client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: InMemoryStore()),
    );
  }

  void streamPokemons() {
    final options = WatchQueryOptions(
      document: documentNodeQueryGetPokemons,
      fetchResults: true,
    );

    final observable = _client.watchQuery(options);

    observable.stream.listen((result) {
      if (result.isLoading) {
        isLoading.value = true;
      } else if (result.hasException) {
        isLoading.value = false;
        errorMessage.value = result.exception.toString();
        result.exception.toString().toLogger();
      } else if (result.isConcrete && result.data != null) {
        isLoading.value = false;
        errorMessage.value = null;
        // final parsed = Query$GetBasePokemons.fromJson(result.data!);
        // pokemons.value = parsed;
        // "Fetched ${parsed.gen9_species.length} pokemons".toLogger();
        final parsed = Query$GetPokemons.fromJson(result.data!);
        pokemons.value = parsed;
      }
    });
  }

  Future<void> getPokemons() async {
    try {
      final options = QueryOptions(
        document: documentNodeQueryGetPokemons,
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await _client.query(options);

      if (result.hasException) {
        errorMessage.value = result.exception.toString();
        result.exception.toString().toLogger();
      } else if (result.data != null) {
        final parsed = Query$GetPokemons.fromJson(result.data!);
        "Fetched ${parsed.pokemon_list.length} pokemons".toLogger();
      }
    } catch (e) {
      e.toString().toLogger();
    } finally {}
  }
}
