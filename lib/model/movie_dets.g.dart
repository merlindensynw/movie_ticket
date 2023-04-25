// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDets> _$movieDetsSerializer = new _$MovieDetsSerializer();

class _$MovieDetsSerializer implements StructuredSerializer<MovieDets> {
  @override
  final Iterable<Type> types = const [MovieDets, _$MovieDets];
  @override
  final String wireName = 'MovieDets';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'backdrop_path',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'genre_ids',
      serializers.serialize(object.genreIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_title',
      serializers.serialize(object.originalTitle,
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
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.voteCount;
    if (value != null) {
      result
        ..add('vote_count`')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  MovieDets deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'genre_ids':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
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
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count`':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieDets extends MovieDets {
  @override
  final String backdropPath;
  @override
  final bool adult;
  @override
  final BuiltList<int> genreIds;
  @override
  final int id;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final String releaseDate;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final int? voteCount;

  factory _$MovieDets([void Function(MovieDetsBuilder)? updates]) =>
      (new MovieDetsBuilder()..update(updates))._build();

  _$MovieDets._(
      {required this.backdropPath,
      required this.adult,
      required this.genreIds,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.video,
      required this.voteAverage,
      this.voteCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        backdropPath, r'MovieDets', 'backdropPath');
    BuiltValueNullFieldError.checkNotNull(adult, r'MovieDets', 'adult');
    BuiltValueNullFieldError.checkNotNull(genreIds, r'MovieDets', 'genreIds');
    BuiltValueNullFieldError.checkNotNull(id, r'MovieDets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, r'MovieDets', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        originalTitle, r'MovieDets', 'originalTitle');
    BuiltValueNullFieldError.checkNotNull(overview, r'MovieDets', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        popularity, r'MovieDets', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        posterPath, r'MovieDets', 'posterPath');
    BuiltValueNullFieldError.checkNotNull(
        releaseDate, r'MovieDets', 'releaseDate');
    BuiltValueNullFieldError.checkNotNull(title, r'MovieDets', 'title');
    BuiltValueNullFieldError.checkNotNull(video, r'MovieDets', 'video');
    BuiltValueNullFieldError.checkNotNull(
        voteAverage, r'MovieDets', 'voteAverage');
  }

  @override
  MovieDets rebuild(void Function(MovieDetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetsBuilder toBuilder() => new MovieDetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDets &&
        backdropPath == other.backdropPath &&
        adult == other.adult &&
        genreIds == other.genreIds &&
        id == other.id &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        releaseDate == other.releaseDate &&
        title == other.title &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, backdropPath.hashCode);
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, genreIds.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, originalTitle.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, voteAverage.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieDets')
          ..add('backdropPath', backdropPath)
          ..add('adult', adult)
          ..add('genreIds', genreIds)
          ..add('id', id)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('releaseDate', releaseDate)
          ..add('title', title)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class MovieDetsBuilder implements Builder<MovieDets, MovieDetsBuilder> {
  _$MovieDets? _$v;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  ListBuilder<int>? _genreIds;
  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();
  set genreIds(ListBuilder<int>? genreIds) => _$this._genreIds = genreIds;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String? _originalTitle;
  String? get originalTitle => _$this._originalTitle;
  set originalTitle(String? originalTitle) =>
      _$this._originalTitle = originalTitle;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  double? _voteAverage;
  double? get voteAverage => _$this._voteAverage;
  set voteAverage(double? voteAverage) => _$this._voteAverage = voteAverage;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  MovieDetsBuilder();

  MovieDetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backdropPath = $v.backdropPath;
      _adult = $v.adult;
      _genreIds = $v.genreIds.toBuilder();
      _id = $v.id;
      _originalLanguage = $v.originalLanguage;
      _originalTitle = $v.originalTitle;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _releaseDate = $v.releaseDate;
      _title = $v.title;
      _video = $v.video;
      _voteAverage = $v.voteAverage;
      _voteCount = $v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDets;
  }

  @override
  void update(void Function(MovieDetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieDets build() => _build();

  _$MovieDets _build() {
    _$MovieDets _$result;
    try {
      _$result = _$v ??
          new _$MovieDets._(
              backdropPath: BuiltValueNullFieldError.checkNotNull(
                  backdropPath, r'MovieDets', 'backdropPath'),
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'MovieDets', 'adult'),
              genreIds: genreIds.build(),
              id: BuiltValueNullFieldError.checkNotNull(id, r'MovieDets', 'id'),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(
                  originalLanguage, r'MovieDets', 'originalLanguage'),
              originalTitle: BuiltValueNullFieldError.checkNotNull(
                  originalTitle, r'MovieDets', 'originalTitle'),
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'MovieDets', 'overview'),
              popularity: BuiltValueNullFieldError.checkNotNull(
                  popularity, r'MovieDets', 'popularity'),
              posterPath: BuiltValueNullFieldError.checkNotNull(
                  posterPath, r'MovieDets', 'posterPath'),
              releaseDate: BuiltValueNullFieldError.checkNotNull(
                  releaseDate, r'MovieDets', 'releaseDate'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'MovieDets', 'title'),
              video: BuiltValueNullFieldError.checkNotNull(video, r'MovieDets', 'video'),
              voteAverage: BuiltValueNullFieldError.checkNotNull(voteAverage, r'MovieDets', 'voteAverage'),
              voteCount: voteCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genreIds';
        genreIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MovieDets', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
