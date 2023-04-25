// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ind_mov_dets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IndMovDets> _$indMovDetsSerializer = new _$IndMovDetsSerializer();
Serializer<Genre> _$genreSerializer = new _$GenreSerializer();

class _$IndMovDetsSerializer implements StructuredSerializer<IndMovDets> {
  @override
  final Iterable<Type> types = const [IndMovDets, _$IndMovDets];
  @override
  final String wireName = 'IndMovDets';

  @override
  Iterable<Object?> serialize(Serializers serializers, IndMovDets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Genre)])),
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
      'poster_path',
      serializers.serialize(object.posterPath,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'tagline',
      serializers.serialize(object.tagline,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(double)),
      'runtime',
      serializers.serialize(object.runtime, specifiedType: const FullType(int)),
      'budget',
      serializers.serialize(object.budget, specifiedType: const FullType(int)),
      'revenue',
      serializers.serialize(object.revenue, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  IndMovDets deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IndMovDetsBuilder();

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
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Genre)]))!
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
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
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
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GenreSerializer implements StructuredSerializer<Genre> {
  @override
  final Iterable<Type> types = const [Genre, _$Genre];
  @override
  final String wireName = 'Genre';

  @override
  Iterable<Object?> serialize(Serializers serializers, Genre object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Genre deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IndMovDets extends IndMovDets {
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final BuiltList<Genre> genres;
  @override
  final int id;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final String posterPath;
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  final bool video;
  @override
  final String releaseDate;
  @override
  final double voteAverage;
  @override
  final double voteCount;
  @override
  final int runtime;
  @override
  final int budget;
  @override
  final int revenue;

  factory _$IndMovDets([void Function(IndMovDetsBuilder)? updates]) =>
      (new IndMovDetsBuilder()..update(updates))._build();

  _$IndMovDets._(
      {required this.adult,
      required this.backdropPath,
      required this.genres,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.status,
      required this.tagline,
      required this.title,
      required this.video,
      required this.releaseDate,
      required this.voteAverage,
      required this.voteCount,
      required this.runtime,
      required this.budget,
      required this.revenue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'IndMovDets', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdropPath, r'IndMovDets', 'backdropPath');
    BuiltValueNullFieldError.checkNotNull(genres, r'IndMovDets', 'genres');
    BuiltValueNullFieldError.checkNotNull(id, r'IndMovDets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, r'IndMovDets', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        originalTitle, r'IndMovDets', 'originalTitle');
    BuiltValueNullFieldError.checkNotNull(overview, r'IndMovDets', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        posterPath, r'IndMovDets', 'posterPath');
    BuiltValueNullFieldError.checkNotNull(status, r'IndMovDets', 'status');
    BuiltValueNullFieldError.checkNotNull(tagline, r'IndMovDets', 'tagline');
    BuiltValueNullFieldError.checkNotNull(title, r'IndMovDets', 'title');
    BuiltValueNullFieldError.checkNotNull(video, r'IndMovDets', 'video');
    BuiltValueNullFieldError.checkNotNull(
        releaseDate, r'IndMovDets', 'releaseDate');
    BuiltValueNullFieldError.checkNotNull(
        voteAverage, r'IndMovDets', 'voteAverage');
    BuiltValueNullFieldError.checkNotNull(
        voteCount, r'IndMovDets', 'voteCount');
    BuiltValueNullFieldError.checkNotNull(runtime, r'IndMovDets', 'runtime');
    BuiltValueNullFieldError.checkNotNull(budget, r'IndMovDets', 'budget');
    BuiltValueNullFieldError.checkNotNull(revenue, r'IndMovDets', 'revenue');
  }

  @override
  IndMovDets rebuild(void Function(IndMovDetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndMovDetsBuilder toBuilder() => new IndMovDetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndMovDets &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        genres == other.genres &&
        id == other.id &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        posterPath == other.posterPath &&
        status == other.status &&
        tagline == other.tagline &&
        title == other.title &&
        video == other.video &&
        releaseDate == other.releaseDate &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        runtime == other.runtime &&
        budget == other.budget &&
        revenue == other.revenue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdropPath.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, originalTitle.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, tagline.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, voteAverage.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, budget.hashCode);
    _$hash = $jc(_$hash, revenue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndMovDets')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('genres', genres)
          ..add('id', id)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('posterPath', posterPath)
          ..add('status', status)
          ..add('tagline', tagline)
          ..add('title', title)
          ..add('video', video)
          ..add('releaseDate', releaseDate)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount)
          ..add('runtime', runtime)
          ..add('budget', budget)
          ..add('revenue', revenue))
        .toString();
  }
}

class IndMovDetsBuilder implements Builder<IndMovDets, IndMovDetsBuilder> {
  _$IndMovDets? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  ListBuilder<Genre>? _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= new ListBuilder<Genre>();
  set genres(ListBuilder<Genre>? genres) => _$this._genres = genres;

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

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _tagline;
  String? get tagline => _$this._tagline;
  set tagline(String? tagline) => _$this._tagline = tagline;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  double? _voteAverage;
  double? get voteAverage => _$this._voteAverage;
  set voteAverage(double? voteAverage) => _$this._voteAverage = voteAverage;

  double? _voteCount;
  double? get voteCount => _$this._voteCount;
  set voteCount(double? voteCount) => _$this._voteCount = voteCount;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  int? _budget;
  int? get budget => _$this._budget;
  set budget(int? budget) => _$this._budget = budget;

  int? _revenue;
  int? get revenue => _$this._revenue;
  set revenue(int? revenue) => _$this._revenue = revenue;

  IndMovDetsBuilder();

  IndMovDetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdropPath = $v.backdropPath;
      _genres = $v.genres.toBuilder();
      _id = $v.id;
      _originalLanguage = $v.originalLanguage;
      _originalTitle = $v.originalTitle;
      _overview = $v.overview;
      _posterPath = $v.posterPath;
      _status = $v.status;
      _tagline = $v.tagline;
      _title = $v.title;
      _video = $v.video;
      _releaseDate = $v.releaseDate;
      _voteAverage = $v.voteAverage;
      _voteCount = $v.voteCount;
      _runtime = $v.runtime;
      _budget = $v.budget;
      _revenue = $v.revenue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndMovDets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndMovDets;
  }

  @override
  void update(void Function(IndMovDetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndMovDets build() => _build();

  _$IndMovDets _build() {
    _$IndMovDets _$result;
    try {
      _$result = _$v ??
          new _$IndMovDets._(
              adult: BuiltValueNullFieldError.checkNotNull(
                  adult, r'IndMovDets', 'adult'),
              backdropPath: BuiltValueNullFieldError.checkNotNull(
                  backdropPath, r'IndMovDets', 'backdropPath'),
              genres: genres.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'IndMovDets', 'id'),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(
                  originalLanguage, r'IndMovDets', 'originalLanguage'),
              originalTitle: BuiltValueNullFieldError.checkNotNull(
                  originalTitle, r'IndMovDets', 'originalTitle'),
              overview: BuiltValueNullFieldError.checkNotNull(
                  overview, r'IndMovDets', 'overview'),
              posterPath: BuiltValueNullFieldError.checkNotNull(
                  posterPath, r'IndMovDets', 'posterPath'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'IndMovDets', 'status'),
              tagline: BuiltValueNullFieldError.checkNotNull(
                  tagline, r'IndMovDets', 'tagline'),
              title: BuiltValueNullFieldError.checkNotNull(title, r'IndMovDets', 'title'),
              video: BuiltValueNullFieldError.checkNotNull(video, r'IndMovDets', 'video'),
              releaseDate: BuiltValueNullFieldError.checkNotNull(releaseDate, r'IndMovDets', 'releaseDate'),
              voteAverage: BuiltValueNullFieldError.checkNotNull(voteAverage, r'IndMovDets', 'voteAverage'),
              voteCount: BuiltValueNullFieldError.checkNotNull(voteCount, r'IndMovDets', 'voteCount'),
              runtime: BuiltValueNullFieldError.checkNotNull(runtime, r'IndMovDets', 'runtime'),
              budget: BuiltValueNullFieldError.checkNotNull(budget, r'IndMovDets', 'budget'),
              revenue: BuiltValueNullFieldError.checkNotNull(revenue, r'IndMovDets', 'revenue'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IndMovDets', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Genre extends Genre {
  @override
  final int id;
  @override
  final String name;

  factory _$Genre([void Function(GenreBuilder)? updates]) =>
      (new GenreBuilder()..update(updates))._build();

  _$Genre._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Genre', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Genre', 'name');
  }

  @override
  Genre rebuild(void Function(GenreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreBuilder toBuilder() => new GenreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genre && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Genre')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenreBuilder implements Builder<Genre, GenreBuilder> {
  _$Genre? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GenreBuilder();

  GenreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Genre other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Genre;
  }

  @override
  void update(void Function(GenreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Genre build() => _build();

  _$Genre _build() {
    final _$result = _$v ??
        new _$Genre._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Genre', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Genre', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
