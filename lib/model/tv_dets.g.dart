// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_dets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TvDets> _$tvDetsSerializer = new _$TvDetsSerializer();

class _$TvDetsSerializer implements StructuredSerializer<TvDets> {
  @override
  final Iterable<Type> types = const [TvDets, _$TvDets];
  @override
  final String wireName = 'TvDets';

  @override
  Iterable<Object?> serialize(Serializers serializers, TvDets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backDropPath,
          specifiedType: const FullType(String)),
      'episode_run_time',
      serializers.serialize(object.episodeRunTime,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'first_air_date',
      serializers.serialize(object.firstAirDate,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'in_production',
      serializers.serialize(object.inProduction,
          specifiedType: const FullType(bool)),
      'language',
      serializers.serialize(object.language,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'last_air_date',
      serializers.serialize(object.lastAirDate,
          specifiedType: const FullType(String)),
      'number_of_episodes',
      serializers.serialize(object.numberOfEpisode,
          specifiedType: const FullType(int)),
      'number_of_seasons',
      serializers.serialize(object.numberOfSeasons,
          specifiedType: const FullType(int)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_name',
      serializers.serialize(object.originalName,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'poster_path',
      serializers.serialize(object.posterPath,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  TvDets deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TvDetsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'backdrop_path':
          result.backDropPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'episode_run_time':
          result.episodeRunTime.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'in_production':
          result.inProduction = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'language':
          result.language.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'last_air_date':
          result.lastAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'number_of_episodes':
          result.numberOfEpisode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'number_of_seasons':
          result.numberOfSeasons = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'original_name':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TvDets extends TvDets {
  @override
  final bool adult;
  @override
  final String backDropPath;
  @override
  final BuiltList<int> episodeRunTime;
  @override
  final String firstAirDate;
  @override
  final int id;
  @override
  final bool inProduction;
  @override
  final BuiltList<String> language;
  @override
  final String lastAirDate;
  @override
  final int numberOfEpisode;
  @override
  final int numberOfSeasons;
  @override
  final String originalLanguage;
  @override
  final String originalName;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final String status;
  @override
  final String type;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  factory _$TvDets([void Function(TvDetsBuilder)? updates]) =>
      (new TvDetsBuilder()..update(updates))._build();

  _$TvDets._(
      {required this.adult,
      required this.backDropPath,
      required this.episodeRunTime,
      required this.firstAirDate,
      required this.id,
      required this.inProduction,
      required this.language,
      required this.lastAirDate,
      required this.numberOfEpisode,
      required this.numberOfSeasons,
      required this.originalLanguage,
      required this.originalName,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.status,
      required this.type,
      required this.voteAverage,
      required this.voteCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'TvDets', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backDropPath, r'TvDets', 'backDropPath');
    BuiltValueNullFieldError.checkNotNull(
        episodeRunTime, r'TvDets', 'episodeRunTime');
    BuiltValueNullFieldError.checkNotNull(
        firstAirDate, r'TvDets', 'firstAirDate');
    BuiltValueNullFieldError.checkNotNull(id, r'TvDets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        inProduction, r'TvDets', 'inProduction');
    BuiltValueNullFieldError.checkNotNull(language, r'TvDets', 'language');
    BuiltValueNullFieldError.checkNotNull(
        lastAirDate, r'TvDets', 'lastAirDate');
    BuiltValueNullFieldError.checkNotNull(
        numberOfEpisode, r'TvDets', 'numberOfEpisode');
    BuiltValueNullFieldError.checkNotNull(
        numberOfSeasons, r'TvDets', 'numberOfSeasons');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, r'TvDets', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        originalName, r'TvDets', 'originalName');
    BuiltValueNullFieldError.checkNotNull(overview, r'TvDets', 'overview');
    BuiltValueNullFieldError.checkNotNull(popularity, r'TvDets', 'popularity');
    BuiltValueNullFieldError.checkNotNull(posterPath, r'TvDets', 'posterPath');
    BuiltValueNullFieldError.checkNotNull(status, r'TvDets', 'status');
    BuiltValueNullFieldError.checkNotNull(type, r'TvDets', 'type');
    BuiltValueNullFieldError.checkNotNull(
        voteAverage, r'TvDets', 'voteAverage');
    BuiltValueNullFieldError.checkNotNull(voteCount, r'TvDets', 'voteCount');
  }

  @override
  TvDets rebuild(void Function(TvDetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TvDetsBuilder toBuilder() => new TvDetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TvDets &&
        adult == other.adult &&
        backDropPath == other.backDropPath &&
        episodeRunTime == other.episodeRunTime &&
        firstAirDate == other.firstAirDate &&
        id == other.id &&
        inProduction == other.inProduction &&
        language == other.language &&
        lastAirDate == other.lastAirDate &&
        numberOfEpisode == other.numberOfEpisode &&
        numberOfSeasons == other.numberOfSeasons &&
        originalLanguage == other.originalLanguage &&
        originalName == other.originalName &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        status == other.status &&
        type == other.type &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backDropPath.hashCode);
    _$hash = $jc(_$hash, episodeRunTime.hashCode);
    _$hash = $jc(_$hash, firstAirDate.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, inProduction.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, lastAirDate.hashCode);
    _$hash = $jc(_$hash, numberOfEpisode.hashCode);
    _$hash = $jc(_$hash, numberOfSeasons.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, originalName.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, voteAverage.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TvDets')
          ..add('adult', adult)
          ..add('backDropPath', backDropPath)
          ..add('episodeRunTime', episodeRunTime)
          ..add('firstAirDate', firstAirDate)
          ..add('id', id)
          ..add('inProduction', inProduction)
          ..add('language', language)
          ..add('lastAirDate', lastAirDate)
          ..add('numberOfEpisode', numberOfEpisode)
          ..add('numberOfSeasons', numberOfSeasons)
          ..add('originalLanguage', originalLanguage)
          ..add('originalName', originalName)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('status', status)
          ..add('type', type)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class TvDetsBuilder implements Builder<TvDets, TvDetsBuilder> {
  _$TvDets? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backDropPath;
  String? get backDropPath => _$this._backDropPath;
  set backDropPath(String? backDropPath) => _$this._backDropPath = backDropPath;

  ListBuilder<int>? _episodeRunTime;
  ListBuilder<int> get episodeRunTime =>
      _$this._episodeRunTime ??= new ListBuilder<int>();
  set episodeRunTime(ListBuilder<int>? episodeRunTime) =>
      _$this._episodeRunTime = episodeRunTime;

  String? _firstAirDate;
  String? get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String? firstAirDate) => _$this._firstAirDate = firstAirDate;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _inProduction;
  bool? get inProduction => _$this._inProduction;
  set inProduction(bool? inProduction) => _$this._inProduction = inProduction;

  ListBuilder<String>? _language;
  ListBuilder<String> get language =>
      _$this._language ??= new ListBuilder<String>();
  set language(ListBuilder<String>? language) => _$this._language = language;

  String? _lastAirDate;
  String? get lastAirDate => _$this._lastAirDate;
  set lastAirDate(String? lastAirDate) => _$this._lastAirDate = lastAirDate;

  int? _numberOfEpisode;
  int? get numberOfEpisode => _$this._numberOfEpisode;
  set numberOfEpisode(int? numberOfEpisode) =>
      _$this._numberOfEpisode = numberOfEpisode;

  int? _numberOfSeasons;
  int? get numberOfSeasons => _$this._numberOfSeasons;
  set numberOfSeasons(int? numberOfSeasons) =>
      _$this._numberOfSeasons = numberOfSeasons;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  double? _voteAverage;
  double? get voteAverage => _$this._voteAverage;
  set voteAverage(double? voteAverage) => _$this._voteAverage = voteAverage;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  TvDetsBuilder();

  TvDetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backDropPath = $v.backDropPath;
      _episodeRunTime = $v.episodeRunTime.toBuilder();
      _firstAirDate = $v.firstAirDate;
      _id = $v.id;
      _inProduction = $v.inProduction;
      _language = $v.language.toBuilder();
      _lastAirDate = $v.lastAirDate;
      _numberOfEpisode = $v.numberOfEpisode;
      _numberOfSeasons = $v.numberOfSeasons;
      _originalLanguage = $v.originalLanguage;
      _originalName = $v.originalName;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _status = $v.status;
      _type = $v.type;
      _voteAverage = $v.voteAverage;
      _voteCount = $v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TvDets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TvDets;
  }

  @override
  void update(void Function(TvDetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TvDets build() => _build();

  _$TvDets _build() {
    _$TvDets _$result;
    try {
      _$result = _$v ??
          new _$TvDets._(
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'TvDets', 'adult'),
              backDropPath: BuiltValueNullFieldError.checkNotNull(
                  backDropPath, r'TvDets', 'backDropPath'),
              episodeRunTime: episodeRunTime.build(),
              firstAirDate: BuiltValueNullFieldError.checkNotNull(
                  firstAirDate, r'TvDets', 'firstAirDate'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'TvDets', 'id'),
              inProduction: BuiltValueNullFieldError.checkNotNull(
                  inProduction, r'TvDets', 'inProduction'),
              language: language.build(),
              lastAirDate: BuiltValueNullFieldError.checkNotNull(
                  lastAirDate, r'TvDets', 'lastAirDate'),
              numberOfEpisode: BuiltValueNullFieldError.checkNotNull(
                  numberOfEpisode, r'TvDets', 'numberOfEpisode'),
              numberOfSeasons: BuiltValueNullFieldError.checkNotNull(
                  numberOfSeasons, r'TvDets', 'numberOfSeasons'),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(
                  originalLanguage, r'TvDets', 'originalLanguage'),
              originalName: BuiltValueNullFieldError.checkNotNull(
                  originalName, r'TvDets', 'originalName'),
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'TvDets', 'overview'),
              popularity: BuiltValueNullFieldError.checkNotNull(popularity, r'TvDets', 'popularity'),
              posterPath: BuiltValueNullFieldError.checkNotNull(posterPath, r'TvDets', 'posterPath'),
              status: BuiltValueNullFieldError.checkNotNull(status, r'TvDets', 'status'),
              type: BuiltValueNullFieldError.checkNotNull(type, r'TvDets', 'type'),
              voteAverage: BuiltValueNullFieldError.checkNotNull(voteAverage, r'TvDets', 'voteAverage'),
              voteCount: BuiltValueNullFieldError.checkNotNull(voteCount, r'TvDets', 'voteCount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodeRunTime';
        episodeRunTime.build();

        _$failedField = 'language';
        language.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TvDets', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
