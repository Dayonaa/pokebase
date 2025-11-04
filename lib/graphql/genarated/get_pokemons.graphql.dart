import 'package:gql/ast.dart';

class Query$GetPokemons {
  Query$GetPokemons({
    required this.pokemon_list,
    this.$__typename = 'query_root',
  });

  factory Query$GetPokemons.fromJson(Map<String, dynamic> json) {
    final l$pokemon_list = json['pokemon_list'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons(
      pokemon_list: (l$pokemon_list as List<dynamic>)
          .map(
            (e) => Query$GetPokemons$pokemon_list.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetPokemons$pokemon_list> pokemon_list;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_list = pokemon_list;
    _resultData['pokemon_list'] = l$pokemon_list
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_list = pokemon_list;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$pokemon_list.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon_list = pokemon_list;
    final lOther$pokemon_list = other.pokemon_list;
    if (l$pokemon_list.length != lOther$pokemon_list.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_list.length; i++) {
      final l$pokemon_list$entry = l$pokemon_list[i];
      final lOther$pokemon_list$entry = lOther$pokemon_list[i];
      if (l$pokemon_list$entry != lOther$pokemon_list$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons on Query$GetPokemons {
  CopyWith$Query$GetPokemons<Query$GetPokemons> get copyWith =>
      CopyWith$Query$GetPokemons(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons<TRes> {
  factory CopyWith$Query$GetPokemons(
    Query$GetPokemons instance,
    TRes Function(Query$GetPokemons) then,
  ) = _CopyWithImpl$Query$GetPokemons;

  factory CopyWith$Query$GetPokemons.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons;

  TRes call({
    List<Query$GetPokemons$pokemon_list>? pokemon_list,
    String? $__typename,
  });
  TRes pokemon_list(
    Iterable<Query$GetPokemons$pokemon_list> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list<Query$GetPokemons$pokemon_list>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPokemons<TRes>
    implements CopyWith$Query$GetPokemons<TRes> {
  _CopyWithImpl$Query$GetPokemons(this._instance, this._then);

  final Query$GetPokemons _instance;

  final TRes Function(Query$GetPokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_list = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPokemons(
      pokemon_list: pokemon_list == _undefined || pokemon_list == null
          ? _instance.pokemon_list
          : (pokemon_list as List<Query$GetPokemons$pokemon_list>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes pokemon_list(
    Iterable<Query$GetPokemons$pokemon_list> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list<Query$GetPokemons$pokemon_list>
      >,
    )
    _fn,
  ) => call(
    pokemon_list: _fn(
      _instance.pokemon_list.map(
        (e) => CopyWith$Query$GetPokemons$pokemon_list(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPokemons<TRes>
    implements CopyWith$Query$GetPokemons<TRes> {
  _CopyWithStubImpl$Query$GetPokemons(this._res);

  TRes _res;

  call({
    List<Query$GetPokemons$pokemon_list>? pokemon_list,
    String? $__typename,
  }) => _res;

  pokemon_list(_fn) => _res;
}

const documentNodeQueryGetPokemons = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetPokemons'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'pokemon'),
            alias: NameNode(value: 'pokemon_list'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'pokemonspecy'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'evolves_from_species_id'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: '_is_null'),
                                  value: BooleanValueNode(value: true),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'order_by'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: EnumValueNode(name: NameNode(value: 'asc')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'weight'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'height'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'base_experience'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'pokemonstats'),
                  alias: NameNode(value: 'status'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'base_stat'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stat'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'pokemontypes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'pokemonspecy'),
                  alias: NameNode(value: 'species'),
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'generation'),
                        alias: NameNode(value: 'generation'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'pokemonsprites'),
                  alias: NameNode(value: 'sprite'),
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'limit'),
                      value: IntValueNode(value: '1'),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'sprites'),
                        alias: NameNode(value: 'gif'),
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'path'),
                            value: StringValueNode(
                              value: 'other.showdown.front_default',
                              isBlock: false,
                            ),
                          ),
                        ],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sprites'),
                        alias: NameNode(value: 'front_default'),
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'path'),
                            value: StringValueNode(
                              value: 'other.official-artwork.front_default',
                              isBlock: false,
                            ),
                          ),
                        ],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sprites'),
                        alias: NameNode(value: 'front_shiny'),
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'path'),
                            value: StringValueNode(
                              value: 'other.official-artwork.front_shiny',
                              isBlock: false,
                            ),
                          ),
                        ],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$GetPokemons$pokemon_list {
  Query$GetPokemons$pokemon_list({
    required this.id,
    required this.name,
    this.weight,
    this.height,
    this.base_experience,
    required this.status,
    required this.pokemontypes,
    this.species,
    required this.sprite,
    this.$__typename = 'pokemon',
  });

  factory Query$GetPokemons$pokemon_list.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$weight = json['weight'];
    final l$height = json['height'];
    final l$base_experience = json['base_experience'];
    final l$status = json['status'];
    final l$pokemontypes = json['pokemontypes'];
    final l$species = json['species'];
    final l$sprite = json['sprite'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list(
      id: (l$id as int),
      name: (l$name as String),
      weight: (l$weight as int?),
      height: (l$height as int?),
      base_experience: (l$base_experience as int?),
      status: (l$status as List<dynamic>)
          .map(
            (e) => Query$GetPokemons$pokemon_list$status.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      pokemontypes: (l$pokemontypes as List<dynamic>)
          .map(
            (e) => Query$GetPokemons$pokemon_list$pokemontypes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      species: l$species == null
          ? null
          : Query$GetPokemons$pokemon_list$species.fromJson(
              (l$species as Map<String, dynamic>),
            ),
      sprite: (l$sprite as List<dynamic>)
          .map(
            (e) => Query$GetPokemons$pokemon_list$sprite.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? weight;

  final int? height;

  final int? base_experience;

  final List<Query$GetPokemons$pokemon_list$status> status;

  final List<Query$GetPokemons$pokemon_list$pokemontypes> pokemontypes;

  final Query$GetPokemons$pokemon_list$species? species;

  final List<Query$GetPokemons$pokemon_list$sprite> sprite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$height = height;
    _resultData['height'] = l$height;
    final l$base_experience = base_experience;
    _resultData['base_experience'] = l$base_experience;
    final l$status = status;
    _resultData['status'] = l$status.map((e) => e.toJson()).toList();
    final l$pokemontypes = pokemontypes;
    _resultData['pokemontypes'] = l$pokemontypes
        .map((e) => e.toJson())
        .toList();
    final l$species = species;
    _resultData['species'] = l$species?.toJson();
    final l$sprite = sprite;
    _resultData['sprite'] = l$sprite.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$weight = weight;
    final l$height = height;
    final l$base_experience = base_experience;
    final l$status = status;
    final l$pokemontypes = pokemontypes;
    final l$species = species;
    final l$sprite = sprite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$weight,
      l$height,
      l$base_experience,
      Object.hashAll(l$status.map((v) => v)),
      Object.hashAll(l$pokemontypes.map((v) => v)),
      l$species,
      Object.hashAll(l$sprite.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) {
      return false;
    }
    final l$base_experience = base_experience;
    final lOther$base_experience = other.base_experience;
    if (l$base_experience != lOther$base_experience) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status.length != lOther$status.length) {
      return false;
    }
    for (int i = 0; i < l$status.length; i++) {
      final l$status$entry = l$status[i];
      final lOther$status$entry = lOther$status[i];
      if (l$status$entry != lOther$status$entry) {
        return false;
      }
    }
    final l$pokemontypes = pokemontypes;
    final lOther$pokemontypes = other.pokemontypes;
    if (l$pokemontypes.length != lOther$pokemontypes.length) {
      return false;
    }
    for (int i = 0; i < l$pokemontypes.length; i++) {
      final l$pokemontypes$entry = l$pokemontypes[i];
      final lOther$pokemontypes$entry = lOther$pokemontypes[i];
      if (l$pokemontypes$entry != lOther$pokemontypes$entry) {
        return false;
      }
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$sprite = sprite;
    final lOther$sprite = other.sprite;
    if (l$sprite.length != lOther$sprite.length) {
      return false;
    }
    for (int i = 0; i < l$sprite.length; i++) {
      final l$sprite$entry = l$sprite[i];
      final lOther$sprite$entry = lOther$sprite[i];
      if (l$sprite$entry != lOther$sprite$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list
    on Query$GetPokemons$pokemon_list {
  CopyWith$Query$GetPokemons$pokemon_list<Query$GetPokemons$pokemon_list>
  get copyWith => CopyWith$Query$GetPokemons$pokemon_list(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons$pokemon_list<TRes> {
  factory CopyWith$Query$GetPokemons$pokemon_list(
    Query$GetPokemons$pokemon_list instance,
    TRes Function(Query$GetPokemons$pokemon_list) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list;

  factory CopyWith$Query$GetPokemons$pokemon_list.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons$pokemon_list;

  TRes call({
    int? id,
    String? name,
    int? weight,
    int? height,
    int? base_experience,
    List<Query$GetPokemons$pokemon_list$status>? status,
    List<Query$GetPokemons$pokemon_list$pokemontypes>? pokemontypes,
    Query$GetPokemons$pokemon_list$species? species,
    List<Query$GetPokemons$pokemon_list$sprite>? sprite,
    String? $__typename,
  });
  TRes status(
    Iterable<Query$GetPokemons$pokemon_list$status> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list$status<
          Query$GetPokemons$pokemon_list$status
        >
      >,
    )
    _fn,
  );
  TRes pokemontypes(
    Iterable<Query$GetPokemons$pokemon_list$pokemontypes> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list$pokemontypes<
          Query$GetPokemons$pokemon_list$pokemontypes
        >
      >,
    )
    _fn,
  );
  CopyWith$Query$GetPokemons$pokemon_list$species<TRes> get species;
  TRes sprite(
    Iterable<Query$GetPokemons$pokemon_list$sprite> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list$sprite<
          Query$GetPokemons$pokemon_list$sprite
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list(this._instance, this._then);

  final Query$GetPokemons$pokemon_list _instance;

  final TRes Function(Query$GetPokemons$pokemon_list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? weight = _undefined,
    Object? height = _undefined,
    Object? base_experience = _undefined,
    Object? status = _undefined,
    Object? pokemontypes = _undefined,
    Object? species = _undefined,
    Object? sprite = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPokemons$pokemon_list(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      weight: weight == _undefined ? _instance.weight : (weight as int?),
      height: height == _undefined ? _instance.height : (height as int?),
      base_experience: base_experience == _undefined
          ? _instance.base_experience
          : (base_experience as int?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as List<Query$GetPokemons$pokemon_list$status>),
      pokemontypes: pokemontypes == _undefined || pokemontypes == null
          ? _instance.pokemontypes
          : (pokemontypes as List<Query$GetPokemons$pokemon_list$pokemontypes>),
      species: species == _undefined
          ? _instance.species
          : (species as Query$GetPokemons$pokemon_list$species?),
      sprite: sprite == _undefined || sprite == null
          ? _instance.sprite
          : (sprite as List<Query$GetPokemons$pokemon_list$sprite>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes status(
    Iterable<Query$GetPokemons$pokemon_list$status> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list$status<
          Query$GetPokemons$pokemon_list$status
        >
      >,
    )
    _fn,
  ) => call(
    status: _fn(
      _instance.status.map(
        (e) => CopyWith$Query$GetPokemons$pokemon_list$status(e, (i) => i),
      ),
    ).toList(),
  );

  TRes pokemontypes(
    Iterable<Query$GetPokemons$pokemon_list$pokemontypes> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list$pokemontypes<
          Query$GetPokemons$pokemon_list$pokemontypes
        >
      >,
    )
    _fn,
  ) => call(
    pokemontypes: _fn(
      _instance.pokemontypes.map(
        (e) =>
            CopyWith$Query$GetPokemons$pokemon_list$pokemontypes(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Query$GetPokemons$pokemon_list$species<TRes> get species {
    final local$species = _instance.species;
    return local$species == null
        ? CopyWith$Query$GetPokemons$pokemon_list$species.stub(_then(_instance))
        : CopyWith$Query$GetPokemons$pokemon_list$species(
            local$species,
            (e) => call(species: e),
          );
  }

  TRes sprite(
    Iterable<Query$GetPokemons$pokemon_list$sprite> Function(
      Iterable<
        CopyWith$Query$GetPokemons$pokemon_list$sprite<
          Query$GetPokemons$pokemon_list$sprite
        >
      >,
    )
    _fn,
  ) => call(
    sprite: _fn(
      _instance.sprite.map(
        (e) => CopyWith$Query$GetPokemons$pokemon_list$sprite(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? weight,
    int? height,
    int? base_experience,
    List<Query$GetPokemons$pokemon_list$status>? status,
    List<Query$GetPokemons$pokemon_list$pokemontypes>? pokemontypes,
    Query$GetPokemons$pokemon_list$species? species,
    List<Query$GetPokemons$pokemon_list$sprite>? sprite,
    String? $__typename,
  }) => _res;

  status(_fn) => _res;

  pokemontypes(_fn) => _res;

  CopyWith$Query$GetPokemons$pokemon_list$species<TRes> get species =>
      CopyWith$Query$GetPokemons$pokemon_list$species.stub(_res);

  sprite(_fn) => _res;
}

class Query$GetPokemons$pokemon_list$status {
  Query$GetPokemons$pokemon_list$status({
    required this.base_stat,
    this.stat,
    this.$__typename = 'pokemonstat',
  });

  factory Query$GetPokemons$pokemon_list$status.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$base_stat = json['base_stat'];
    final l$stat = json['stat'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list$status(
      base_stat: (l$base_stat as int),
      stat: l$stat == null
          ? null
          : Query$GetPokemons$pokemon_list$status$stat.fromJson(
              (l$stat as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final int base_stat;

  final Query$GetPokemons$pokemon_list$status$stat? stat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$base_stat = base_stat;
    _resultData['base_stat'] = l$base_stat;
    final l$stat = stat;
    _resultData['stat'] = l$stat?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$base_stat = base_stat;
    final l$stat = stat;
    final l$$__typename = $__typename;
    return Object.hashAll([l$base_stat, l$stat, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list$status ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$base_stat = base_stat;
    final lOther$base_stat = other.base_stat;
    if (l$base_stat != lOther$base_stat) {
      return false;
    }
    final l$stat = stat;
    final lOther$stat = other.stat;
    if (l$stat != lOther$stat) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list$status
    on Query$GetPokemons$pokemon_list$status {
  CopyWith$Query$GetPokemons$pokemon_list$status<
    Query$GetPokemons$pokemon_list$status
  >
  get copyWith =>
      CopyWith$Query$GetPokemons$pokemon_list$status(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons$pokemon_list$status<TRes> {
  factory CopyWith$Query$GetPokemons$pokemon_list$status(
    Query$GetPokemons$pokemon_list$status instance,
    TRes Function(Query$GetPokemons$pokemon_list$status) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list$status;

  factory CopyWith$Query$GetPokemons$pokemon_list$status.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons$pokemon_list$status;

  TRes call({
    int? base_stat,
    Query$GetPokemons$pokemon_list$status$stat? stat,
    String? $__typename,
  });
  CopyWith$Query$GetPokemons$pokemon_list$status$stat<TRes> get stat;
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list$status<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$status<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list$status(
    this._instance,
    this._then,
  );

  final Query$GetPokemons$pokemon_list$status _instance;

  final TRes Function(Query$GetPokemons$pokemon_list$status) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? base_stat = _undefined,
    Object? stat = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPokemons$pokemon_list$status(
      base_stat: base_stat == _undefined || base_stat == null
          ? _instance.base_stat
          : (base_stat as int),
      stat: stat == _undefined
          ? _instance.stat
          : (stat as Query$GetPokemons$pokemon_list$status$stat?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetPokemons$pokemon_list$status$stat<TRes> get stat {
    final local$stat = _instance.stat;
    return local$stat == null
        ? CopyWith$Query$GetPokemons$pokemon_list$status$stat.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetPokemons$pokemon_list$status$stat(
            local$stat,
            (e) => call(stat: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list$status<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$status<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list$status(this._res);

  TRes _res;

  call({
    int? base_stat,
    Query$GetPokemons$pokemon_list$status$stat? stat,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetPokemons$pokemon_list$status$stat<TRes> get stat =>
      CopyWith$Query$GetPokemons$pokemon_list$status$stat.stub(_res);
}

class Query$GetPokemons$pokemon_list$status$stat {
  Query$GetPokemons$pokemon_list$status$stat({
    required this.name,
    this.$__typename = 'stat',
  });

  factory Query$GetPokemons$pokemon_list$status$stat.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list$status$stat(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list$status$stat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list$status$stat
    on Query$GetPokemons$pokemon_list$status$stat {
  CopyWith$Query$GetPokemons$pokemon_list$status$stat<
    Query$GetPokemons$pokemon_list$status$stat
  >
  get copyWith =>
      CopyWith$Query$GetPokemons$pokemon_list$status$stat(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons$pokemon_list$status$stat<TRes> {
  factory CopyWith$Query$GetPokemons$pokemon_list$status$stat(
    Query$GetPokemons$pokemon_list$status$stat instance,
    TRes Function(Query$GetPokemons$pokemon_list$status$stat) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list$status$stat;

  factory CopyWith$Query$GetPokemons$pokemon_list$status$stat.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons$pokemon_list$status$stat;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list$status$stat<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$status$stat<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list$status$stat(
    this._instance,
    this._then,
  );

  final Query$GetPokemons$pokemon_list$status$stat _instance;

  final TRes Function(Query$GetPokemons$pokemon_list$status$stat) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetPokemons$pokemon_list$status$stat(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list$status$stat<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$status$stat<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list$status$stat(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Query$GetPokemons$pokemon_list$pokemontypes {
  Query$GetPokemons$pokemon_list$pokemontypes({
    this.type,
    this.$__typename = 'pokemontype',
  });

  factory Query$GetPokemons$pokemon_list$pokemontypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list$pokemontypes(
      type: l$type == null
          ? null
          : Query$GetPokemons$pokemon_list$pokemontypes$type.fromJson(
              (l$type as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPokemons$pokemon_list$pokemontypes$type? type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list$pokemontypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list$pokemontypes
    on Query$GetPokemons$pokemon_list$pokemontypes {
  CopyWith$Query$GetPokemons$pokemon_list$pokemontypes<
    Query$GetPokemons$pokemon_list$pokemontypes
  >
  get copyWith =>
      CopyWith$Query$GetPokemons$pokemon_list$pokemontypes(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons$pokemon_list$pokemontypes<TRes> {
  factory CopyWith$Query$GetPokemons$pokemon_list$pokemontypes(
    Query$GetPokemons$pokemon_list$pokemontypes instance,
    TRes Function(Query$GetPokemons$pokemon_list$pokemontypes) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list$pokemontypes;

  factory CopyWith$Query$GetPokemons$pokemon_list$pokemontypes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons$pokemon_list$pokemontypes;

  TRes call({
    Query$GetPokemons$pokemon_list$pokemontypes$type? type,
    String? $__typename,
  });
  CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes> get type;
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list$pokemontypes<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$pokemontypes<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list$pokemontypes(
    this._instance,
    this._then,
  );

  final Query$GetPokemons$pokemon_list$pokemontypes _instance;

  final TRes Function(Query$GetPokemons$pokemon_list$pokemontypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? type = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetPokemons$pokemon_list$pokemontypes(
          type: type == _undefined
              ? _instance.type
              : (type as Query$GetPokemons$pokemon_list$pokemontypes$type?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type(
            local$type,
            (e) => call(type: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list$pokemontypes<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$pokemontypes<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list$pokemontypes(this._res);

  TRes _res;

  call({
    Query$GetPokemons$pokemon_list$pokemontypes$type? type,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes> get type =>
      CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type.stub(_res);
}

class Query$GetPokemons$pokemon_list$pokemontypes$type {
  Query$GetPokemons$pokemon_list$pokemontypes$type({
    required this.name,
    this.$__typename = 'type',
  });

  factory Query$GetPokemons$pokemon_list$pokemontypes$type.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list$pokemontypes$type(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list$pokemontypes$type ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list$pokemontypes$type
    on Query$GetPokemons$pokemon_list$pokemontypes$type {
  CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type<
    Query$GetPokemons$pokemon_list$pokemontypes$type
  >
  get copyWith =>
      CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes> {
  factory CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type(
    Query$GetPokemons$pokemon_list$pokemontypes$type instance,
    TRes Function(Query$GetPokemons$pokemon_list$pokemontypes$type) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list$pokemontypes$type;

  factory CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPokemons$pokemon_list$pokemontypes$type;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list$pokemontypes$type(
    this._instance,
    this._then,
  );

  final Query$GetPokemons$pokemon_list$pokemontypes$type _instance;

  final TRes Function(Query$GetPokemons$pokemon_list$pokemontypes$type) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetPokemons$pokemon_list$pokemontypes$type(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$pokemontypes$type<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list$pokemontypes$type(this._res);

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Query$GetPokemons$pokemon_list$species {
  Query$GetPokemons$pokemon_list$species({
    this.generation,
    this.$__typename = 'pokemonspecies',
  });

  factory Query$GetPokemons$pokemon_list$species.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$generation = json['generation'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list$species(
      generation: l$generation == null
          ? null
          : Query$GetPokemons$pokemon_list$species$generation.fromJson(
              (l$generation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPokemons$pokemon_list$species$generation? generation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$generation = generation;
    _resultData['generation'] = l$generation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$generation = generation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$generation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list$species ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$generation = generation;
    final lOther$generation = other.generation;
    if (l$generation != lOther$generation) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list$species
    on Query$GetPokemons$pokemon_list$species {
  CopyWith$Query$GetPokemons$pokemon_list$species<
    Query$GetPokemons$pokemon_list$species
  >
  get copyWith =>
      CopyWith$Query$GetPokemons$pokemon_list$species(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons$pokemon_list$species<TRes> {
  factory CopyWith$Query$GetPokemons$pokemon_list$species(
    Query$GetPokemons$pokemon_list$species instance,
    TRes Function(Query$GetPokemons$pokemon_list$species) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list$species;

  factory CopyWith$Query$GetPokemons$pokemon_list$species.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons$pokemon_list$species;

  TRes call({
    Query$GetPokemons$pokemon_list$species$generation? generation,
    String? $__typename,
  });
  CopyWith$Query$GetPokemons$pokemon_list$species$generation<TRes>
  get generation;
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list$species<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$species<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list$species(
    this._instance,
    this._then,
  );

  final Query$GetPokemons$pokemon_list$species _instance;

  final TRes Function(Query$GetPokemons$pokemon_list$species) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? generation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPokemons$pokemon_list$species(
      generation: generation == _undefined
          ? _instance.generation
          : (generation as Query$GetPokemons$pokemon_list$species$generation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetPokemons$pokemon_list$species$generation<TRes>
  get generation {
    final local$generation = _instance.generation;
    return local$generation == null
        ? CopyWith$Query$GetPokemons$pokemon_list$species$generation.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetPokemons$pokemon_list$species$generation(
            local$generation,
            (e) => call(generation: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list$species<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$species<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list$species(this._res);

  TRes _res;

  call({
    Query$GetPokemons$pokemon_list$species$generation? generation,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetPokemons$pokemon_list$species$generation<TRes>
  get generation =>
      CopyWith$Query$GetPokemons$pokemon_list$species$generation.stub(_res);
}

class Query$GetPokemons$pokemon_list$species$generation {
  Query$GetPokemons$pokemon_list$species$generation({
    required this.id,
    required this.name,
    this.$__typename = 'generation',
  });

  factory Query$GetPokemons$pokemon_list$species$generation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list$species$generation(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list$species$generation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list$species$generation
    on Query$GetPokemons$pokemon_list$species$generation {
  CopyWith$Query$GetPokemons$pokemon_list$species$generation<
    Query$GetPokemons$pokemon_list$species$generation
  >
  get copyWith => CopyWith$Query$GetPokemons$pokemon_list$species$generation(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetPokemons$pokemon_list$species$generation<
  TRes
> {
  factory CopyWith$Query$GetPokemons$pokemon_list$species$generation(
    Query$GetPokemons$pokemon_list$species$generation instance,
    TRes Function(Query$GetPokemons$pokemon_list$species$generation) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list$species$generation;

  factory CopyWith$Query$GetPokemons$pokemon_list$species$generation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetPokemons$pokemon_list$species$generation;

  TRes call({int? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list$species$generation<TRes>
    implements
        CopyWith$Query$GetPokemons$pokemon_list$species$generation<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list$species$generation(
    this._instance,
    this._then,
  );

  final Query$GetPokemons$pokemon_list$species$generation _instance;

  final TRes Function(Query$GetPokemons$pokemon_list$species$generation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPokemons$pokemon_list$species$generation(
      id: id == _undefined || id == null ? _instance.id : (id as int),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list$species$generation<TRes>
    implements
        CopyWith$Query$GetPokemons$pokemon_list$species$generation<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list$species$generation(
    this._res,
  );

  TRes _res;

  call({int? id, String? name, String? $__typename}) => _res;
}

class Query$GetPokemons$pokemon_list$sprite {
  Query$GetPokemons$pokemon_list$sprite({
    required this.gif,
    required this.front_default,
    required this.front_shiny,
    this.$__typename = 'pokemonsprites',
  });

  factory Query$GetPokemons$pokemon_list$sprite.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$gif = json['gif'];
    final l$front_default = json['front_default'];
    final l$front_shiny = json['front_shiny'];
    final l$$__typename = json['__typename'];
    return Query$GetPokemons$pokemon_list$sprite(
      gif: (l$gif as dynamic),
      front_default: (l$front_default as dynamic),
      front_shiny: (l$front_shiny as dynamic),
      $__typename: (l$$__typename as String),
    );
  }

  final dynamic gif;

  final dynamic front_default;

  final dynamic front_shiny;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gif = gif;
    _resultData['gif'] = l$gif;
    final l$front_default = front_default;
    _resultData['front_default'] = l$front_default;
    final l$front_shiny = front_shiny;
    _resultData['front_shiny'] = l$front_shiny;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gif = gif;
    final l$front_default = front_default;
    final l$front_shiny = front_shiny;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gif,
      l$front_default,
      l$front_shiny,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPokemons$pokemon_list$sprite ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gif = gif;
    final lOther$gif = other.gif;
    if (l$gif != lOther$gif) {
      return false;
    }
    final l$front_default = front_default;
    final lOther$front_default = other.front_default;
    if (l$front_default != lOther$front_default) {
      return false;
    }
    final l$front_shiny = front_shiny;
    final lOther$front_shiny = other.front_shiny;
    if (l$front_shiny != lOther$front_shiny) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPokemons$pokemon_list$sprite
    on Query$GetPokemons$pokemon_list$sprite {
  CopyWith$Query$GetPokemons$pokemon_list$sprite<
    Query$GetPokemons$pokemon_list$sprite
  >
  get copyWith =>
      CopyWith$Query$GetPokemons$pokemon_list$sprite(this, (i) => i);
}

abstract class CopyWith$Query$GetPokemons$pokemon_list$sprite<TRes> {
  factory CopyWith$Query$GetPokemons$pokemon_list$sprite(
    Query$GetPokemons$pokemon_list$sprite instance,
    TRes Function(Query$GetPokemons$pokemon_list$sprite) then,
  ) = _CopyWithImpl$Query$GetPokemons$pokemon_list$sprite;

  factory CopyWith$Query$GetPokemons$pokemon_list$sprite.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPokemons$pokemon_list$sprite;

  TRes call({
    dynamic? gif,
    dynamic? front_default,
    dynamic? front_shiny,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPokemons$pokemon_list$sprite<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$sprite<TRes> {
  _CopyWithImpl$Query$GetPokemons$pokemon_list$sprite(
    this._instance,
    this._then,
  );

  final Query$GetPokemons$pokemon_list$sprite _instance;

  final TRes Function(Query$GetPokemons$pokemon_list$sprite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gif = _undefined,
    Object? front_default = _undefined,
    Object? front_shiny = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPokemons$pokemon_list$sprite(
      gif: gif == _undefined || gif == null ? _instance.gif : (gif as dynamic),
      front_default: front_default == _undefined || front_default == null
          ? _instance.front_default
          : (front_default as dynamic),
      front_shiny: front_shiny == _undefined || front_shiny == null
          ? _instance.front_shiny
          : (front_shiny as dynamic),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetPokemons$pokemon_list$sprite<TRes>
    implements CopyWith$Query$GetPokemons$pokemon_list$sprite<TRes> {
  _CopyWithStubImpl$Query$GetPokemons$pokemon_list$sprite(this._res);

  TRes _res;

  call({
    dynamic? gif,
    dynamic? front_default,
    dynamic? front_shiny,
    String? $__typename,
  }) => _res;
}
