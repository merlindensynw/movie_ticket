// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.popularList;
    if (value != null) {
      result
        ..add('popularList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieDets)])));
    }
    value = object.topratedList;
    if (value != null) {
      result
        ..add('topratedList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieDets)])));
    }
    value = object.upcomingList;
    if (value != null) {
      result
        ..add('upcomingList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(MovieDets)])));
    }
    value = object.movieDetails;
    if (value != null) {
      result
        ..add('movieDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(IndMovDets)));
    }
    value = object.getCastList;
    if (value != null) {
      result
        ..add('getCastList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Cast)])));
    }
    value = object.getActDets;
    if (value != null) {
      result
        ..add('getActDets')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ActDet)));
    }
    value = object.actorTv;
    if (value != null) {
      result
        ..add('actorTv')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ActTv)])));
    }
    value = object.actorMovies;
    if (value != null) {
      result
        ..add('actorMovies')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ActMov)])));
    }
    value = object.tvDetails;
    if (value != null) {
      result
        ..add('tvDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TvDets)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'popularList':
          result.popularList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieDets)]))!
              as BuiltList<Object?>);
          break;
        case 'topratedList':
          result.topratedList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieDets)]))!
              as BuiltList<Object?>);
          break;
        case 'upcomingList':
          result.upcomingList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieDets)]))!
              as BuiltList<Object?>);
          break;
        case 'movieDetails':
          result.movieDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(IndMovDets))! as IndMovDets);
          break;
        case 'getCastList':
          result.getCastList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Cast)]))!
              as BuiltList<Object?>);
          break;
        case 'getActDets':
          result.getActDets.replace(serializers.deserialize(value,
              specifiedType: const FullType(ActDet))! as ActDet);
          break;
        case 'actorTv':
          result.actorTv.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(ActTv)]))!
              as BuiltList<Object?>);
          break;
        case 'actorMovies':
          result.actorMovies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ActMov)]))!
              as BuiltList<Object?>);
          break;
        case 'tvDetails':
          result.tvDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(TvDets))! as TvDets);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<MovieDets>? popularList;
  @override
  final BuiltList<MovieDets>? topratedList;
  @override
  final BuiltList<MovieDets>? upcomingList;
  @override
  final IndMovDets? movieDetails;
  @override
  final BuiltList<Cast>? getCastList;
  @override
  final ActDet? getActDets;
  @override
  final BuiltList<ActTv>? actorTv;
  @override
  final BuiltList<ActMov>? actorMovies;
  @override
  final TvDets? tvDetails;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {this.popularList,
      this.topratedList,
      this.upcomingList,
      this.movieDetails,
      this.getCastList,
      this.getActDets,
      this.actorTv,
      this.actorMovies,
      this.tvDetails})
      : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        popularList == other.popularList &&
        topratedList == other.topratedList &&
        upcomingList == other.upcomingList &&
        movieDetails == other.movieDetails &&
        getCastList == other.getCastList &&
        getActDets == other.getActDets &&
        actorTv == other.actorTv &&
        actorMovies == other.actorMovies &&
        tvDetails == other.tvDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, popularList.hashCode);
    _$hash = $jc(_$hash, topratedList.hashCode);
    _$hash = $jc(_$hash, upcomingList.hashCode);
    _$hash = $jc(_$hash, movieDetails.hashCode);
    _$hash = $jc(_$hash, getCastList.hashCode);
    _$hash = $jc(_$hash, getActDets.hashCode);
    _$hash = $jc(_$hash, actorTv.hashCode);
    _$hash = $jc(_$hash, actorMovies.hashCode);
    _$hash = $jc(_$hash, tvDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('popularList', popularList)
          ..add('topratedList', topratedList)
          ..add('upcomingList', upcomingList)
          ..add('movieDetails', movieDetails)
          ..add('getCastList', getCastList)
          ..add('getActDets', getActDets)
          ..add('actorTv', actorTv)
          ..add('actorMovies', actorMovies)
          ..add('tvDetails', tvDetails))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<MovieDets>? _popularList;
  ListBuilder<MovieDets> get popularList =>
      _$this._popularList ??= new ListBuilder<MovieDets>();
  set popularList(ListBuilder<MovieDets>? popularList) =>
      _$this._popularList = popularList;

  ListBuilder<MovieDets>? _topratedList;
  ListBuilder<MovieDets> get topratedList =>
      _$this._topratedList ??= new ListBuilder<MovieDets>();
  set topratedList(ListBuilder<MovieDets>? topratedList) =>
      _$this._topratedList = topratedList;

  ListBuilder<MovieDets>? _upcomingList;
  ListBuilder<MovieDets> get upcomingList =>
      _$this._upcomingList ??= new ListBuilder<MovieDets>();
  set upcomingList(ListBuilder<MovieDets>? upcomingList) =>
      _$this._upcomingList = upcomingList;

  IndMovDetsBuilder? _movieDetails;
  IndMovDetsBuilder get movieDetails =>
      _$this._movieDetails ??= new IndMovDetsBuilder();
  set movieDetails(IndMovDetsBuilder? movieDetails) =>
      _$this._movieDetails = movieDetails;

  ListBuilder<Cast>? _getCastList;
  ListBuilder<Cast> get getCastList =>
      _$this._getCastList ??= new ListBuilder<Cast>();
  set getCastList(ListBuilder<Cast>? getCastList) =>
      _$this._getCastList = getCastList;

  ActDetBuilder? _getActDets;
  ActDetBuilder get getActDets => _$this._getActDets ??= new ActDetBuilder();
  set getActDets(ActDetBuilder? getActDets) => _$this._getActDets = getActDets;

  ListBuilder<ActTv>? _actorTv;
  ListBuilder<ActTv> get actorTv =>
      _$this._actorTv ??= new ListBuilder<ActTv>();
  set actorTv(ListBuilder<ActTv>? actorTv) => _$this._actorTv = actorTv;

  ListBuilder<ActMov>? _actorMovies;
  ListBuilder<ActMov> get actorMovies =>
      _$this._actorMovies ??= new ListBuilder<ActMov>();
  set actorMovies(ListBuilder<ActMov>? actorMovies) =>
      _$this._actorMovies = actorMovies;

  TvDetsBuilder? _tvDetails;
  TvDetsBuilder get tvDetails => _$this._tvDetails ??= new TvDetsBuilder();
  set tvDetails(TvDetsBuilder? tvDetails) => _$this._tvDetails = tvDetails;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _popularList = $v.popularList?.toBuilder();
      _topratedList = $v.topratedList?.toBuilder();
      _upcomingList = $v.upcomingList?.toBuilder();
      _movieDetails = $v.movieDetails?.toBuilder();
      _getCastList = $v.getCastList?.toBuilder();
      _getActDets = $v.getActDets?.toBuilder();
      _actorTv = $v.actorTv?.toBuilder();
      _actorMovies = $v.actorMovies?.toBuilder();
      _tvDetails = $v.tvDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              popularList: _popularList?.build(),
              topratedList: _topratedList?.build(),
              upcomingList: _upcomingList?.build(),
              movieDetails: _movieDetails?.build(),
              getCastList: _getCastList?.build(),
              getActDets: _getActDets?.build(),
              actorTv: _actorTv?.build(),
              actorMovies: _actorMovies?.build(),
              tvDetails: _tvDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'popularList';
        _popularList?.build();
        _$failedField = 'topratedList';
        _topratedList?.build();
        _$failedField = 'upcomingList';
        _upcomingList?.build();
        _$failedField = 'movieDetails';
        _movieDetails?.build();
        _$failedField = 'getCastList';
        _getCastList?.build();
        _$failedField = 'getActDets';
        _getActDets?.build();
        _$failedField = 'actorTv';
        _actorTv?.build();
        _$failedField = 'actorMovies';
        _actorMovies?.build();
        _$failedField = 'tvDetails';
        _tvDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
