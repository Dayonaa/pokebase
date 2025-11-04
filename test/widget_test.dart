// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pokebase/graphql/genarated/get_pokemons.graphql.dart';
import 'package:pokebase/utiilities/extensions.dart';

final httpLink = HttpLink('https://graphql.pokeapi.co/v1beta2');
final _client = GraphQLClient(
  link: httpLink,
  cache: GraphQLCache(store: InMemoryStore()),
);

Future<void> getPokemon() async {
  try {
    final options = QueryOptions(
      document: documentNodeQueryGetPokemons,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    final result = await _client.query(options);

    if (result.hasException) {
      result.exception.toString().toLogger();
    } else if (result.data != null) {
      final parsed = Query$GetPokemons.fromJson(result.data!);
      "Fetched ${parsed.pokemon_list.length} pokemons".toLogger();
    }
  } catch (e) {
    e.toString().toLogger();
  } finally {}
}

Future<void> main() async {
  test("get pokemon", () async {
    await getPokemon();
  });
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
