// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'act_tv.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActTv> _$actTvSerializer = new _$ActTvSerializer();

class _$ActTvSerializer implements StructuredSerializer<ActTv> {
  @override
  final Iterable<Type> types = const [ActTv, _$ActTv];
  @override
  final String wireName = 'ActTv';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActTv object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'origin_country',
      serializers.serialize(object.originCountry,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'genre_ids',
      serializers.serialize(object.genreIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.adult;
    if (value != null) {
      result
        ..add('adult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.backDropPath;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.originalLanguage;
    if (value != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originalName;
    if (value != null) {
      result
        ..add('original_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.posterPath;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstAirDate;
    if (value != null) {
      result
        ..add('first_air_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.voteAverage;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.voteCount;
    if (value != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.character;
    if (value != null) {
      result
        ..add('character')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creditId;
    if (value != null) {
      result
        ..add('credit_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.episodeCount;
    if (value != null) {
      result
        ..add('episode_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ActTv deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActTvBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'backdrop_path':
          result.backDropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'original_name':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'credit_id':
          result.creditId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'episode_count':
          result.episodeCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'origin_country':
          result.originCountry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'genre_ids':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ActTv extends ActTv {
  @override
  final bool? adult;
  @override
  final String? backDropPath;
  @override
  final int? id;
  @override
  final String? originalLanguage;
  @override
  final String? originalName;
  @override
  final String overview;
  @override
  final double? popularity;
  @override
  final String? posterPath;
  @override
  final String? firstAirDate;
  @override
  final String? name;
  @override
  final double? voteAverage;
  @override
  final int? voteCount;
  @override
  final String? character;
  @override
  final String? creditId;
  @override
  final int? episodeCount;
  @override
  final BuiltList<String> originCountry;
  @override
  final BuiltList<int?> genreIds;

  factory _$ActTv([void Function(ActTvBuilder)? updates]) =>
      (new ActTvBuilder()..update(updates))._build();

  _$ActTv._(
      {this.adult,
      this.backDropPath,
      this.id,
      this.originalLanguage,
      this.originalName,
      required this.overview,
      this.popularity,
      this.posterPath,
      this.firstAirDate,
      this.name,
      this.voteAverage,
      this.voteCount,
      this.character,
      this.creditId,
      this.episodeCount,
      required this.originCountry,
      required this.genreIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(overview, r'ActTv', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        originCountry, r'ActTv', 'originCountry');
    BuiltValueNullFieldError.checkNotNull(genreIds, r'ActTv', 'genreIds');
  }

  @override
  ActTv rebuild(void Function(ActTvBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActTvBuilder toBuilder() => new ActTvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActTv &&
        adult == other.adult &&
        backDropPath == other.backDropPath &&
        id == other.id &&
        originalLanguage == other.originalLanguage &&
        originalName == other.originalName &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        firstAirDate == other.firstAirDate &&
        name == other.name &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        character == other.character &&
        creditId == other.creditId &&
        episodeCount == other.episodeCount &&
        originCountry == other.originCountry &&
        genreIds == other.genreIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backDropPath.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, originalName.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, firstAirDate.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, voteAverage.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, creditId.hashCode);
    _$hash = $jc(_$hash, episodeCount.hashCode);
    _$hash = $jc(_$hash, originCountry.hashCode);
    _$hash = $jc(_$hash, genreIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActTv')
          ..add('adult', adult)
          ..add('backDropPath', backDropPath)
          ..add('id', id)
          ..add('originalLanguage', originalLanguage)
          ..add('originalName', originalName)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('firstAirDate', firstAirDate)
          ..add('name', name)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount)
          ..add('character', character)
          ..add('creditId', creditId)
          ..add('episodeCount', episodeCount)
          ..add('originCountry', originCountry)
          ..add('genreIds', genreIds))
        .toString();
  }
}

class ActTvBuilder implements Builder<ActTv, ActTvBuilder> {
  _$ActTv? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backDropPath;
  String? get backDropPath => _$this._backDropPath;
  set backDropPath(String? backDropPath) => _$this._backDropPath = backDropPath;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String? _originalName;
  String? get originalName => _$this._originalName;
  set originalName(String? originalName) => _$this._originalName = originalName;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  String? _firstAirDate;
  String? get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String? firstAirDate) => _$this._firstAirDate = firstAirDate;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _voteAverage;
  double? get voteAverage => _$this._voteAverage;
  set voteAverage(double? voteAverage) => _$this._voteAverage = voteAverage;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _creditId;
  String? get creditId => _$this._creditId;
  set creditId(String? creditId) => _$this._creditId = creditId;

  int? _episodeCount;
  int? get episodeCount => _$this._episodeCount;
  set episodeCount(int? episodeCount) => _$this._episodeCount = episodeCount;

  ListBuilder<String>? _originCountry;
  ListBuilder<String> get originCountry =>
      _$this._originCountry ??= new ListBuilder<String>();
  set originCountry(ListBuilder<String>? originCountry) =>
      _$this._originCountry = originCountry;

  ListBuilder<int?>? _genreIds;
  ListBuilder<int?> get genreIds =>
      _$this._genreIds ??= new ListBuilder<int?>();
  set genreIds(ListBuilder<int?>? genreIds) => _$this._genreIds = genreIds;

  ActTvBuilder();

  ActTvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backDropPath = $v.backDropPath;
      _id = $v.id;
      _originalLanguage = $v.originalLanguage;
      _originalName = $v.originalName;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _firstAirDate = $v.firstAirDate;
      _name = $v.name;
      _voteAverage = $v.voteAverage;
      _voteCount = $v.voteCount;
      _character = $v.character;
      _creditId = $v.creditId;
      _episodeCount = $v.episodeCount;
      _originCountry = $v.originCountry.toBuilder();
      _genreIds = $v.genreIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActTv other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActTv;
  }

  @override
  void update(void Function(ActTvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActTv build() => _build();

  _$ActTv _build() {
    _$ActTv _$result;
    try {
      _$result = _$v ??
          new _$ActTv._(
              adult: adult,
              backDropPath: backDropPath,
              id: id,
              originalLanguage: originalLanguage,
              originalName: originalName,
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'ActTv', 'overview'),
              popularity: popularity,
              posterPath: posterPath,
              firstAirDate: firstAirDate,
              name: name,
              voteAverage: voteAverage,
              voteCount: voteCount,
              character: character,
              creditId: creditId,
              episodeCount: episodeCount,
              originCountry: originCountry.build(),
              genreIds: genreIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'originCountry';
        originCountry.build();
        _$failedField = 'genreIds';
        genreIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActTv', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
