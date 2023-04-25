// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'act_det.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActDet> _$actDetSerializer = new _$ActDetSerializer();

class _$ActDetSerializer implements StructuredSerializer<ActDet> {
  @override
  final Iterable<Type> types = const [ActDet, _$ActDet];
  @override
  final String wireName = 'ActDet';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActDet object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'biography',
      serializers.serialize(object.biography,
          specifiedType: const FullType(String)),
      'birthday',
      serializers.serialize(object.birthday,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'imdb_id',
      serializers.serialize(object.imdbId,
          specifiedType: const FullType(String)),
      'known_for_department',
      serializers.serialize(object.knownForDepartment,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'place_of_birth',
      serializers.serialize(object.placeOfBirth,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'profile_path',
      serializers.serialize(object.profilePath,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deathday;
    if (value != null) {
      result
        ..add('deathday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ActDet deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActDetBuilder();

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
        case 'biography':
          result.biography = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deathday':
          result.deathday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'known_for_department':
          result.knownForDepartment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'place_of_birth':
          result.placeOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'profile_path':
          result.profilePath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ActDet extends ActDet {
  @override
  final bool adult;
  @override
  final String biography;
  @override
  final String birthday;
  @override
  final String? deathday;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String imdbId;
  @override
  final String knownForDepartment;
  @override
  final String name;
  @override
  final String placeOfBirth;
  @override
  final double popularity;
  @override
  final String profilePath;

  factory _$ActDet([void Function(ActDetBuilder)? updates]) =>
      (new ActDetBuilder()..update(updates))._build();

  _$ActDet._(
      {required this.adult,
      required this.biography,
      required this.birthday,
      this.deathday,
      required this.gender,
      required this.id,
      required this.imdbId,
      required this.knownForDepartment,
      required this.name,
      required this.placeOfBirth,
      required this.popularity,
      required this.profilePath})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'ActDet', 'adult');
    BuiltValueNullFieldError.checkNotNull(biography, r'ActDet', 'biography');
    BuiltValueNullFieldError.checkNotNull(birthday, r'ActDet', 'birthday');
    BuiltValueNullFieldError.checkNotNull(gender, r'ActDet', 'gender');
    BuiltValueNullFieldError.checkNotNull(id, r'ActDet', 'id');
    BuiltValueNullFieldError.checkNotNull(imdbId, r'ActDet', 'imdbId');
    BuiltValueNullFieldError.checkNotNull(
        knownForDepartment, r'ActDet', 'knownForDepartment');
    BuiltValueNullFieldError.checkNotNull(name, r'ActDet', 'name');
    BuiltValueNullFieldError.checkNotNull(
        placeOfBirth, r'ActDet', 'placeOfBirth');
    BuiltValueNullFieldError.checkNotNull(popularity, r'ActDet', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        profilePath, r'ActDet', 'profilePath');
  }

  @override
  ActDet rebuild(void Function(ActDetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActDetBuilder toBuilder() => new ActDetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActDet &&
        adult == other.adult &&
        biography == other.biography &&
        birthday == other.birthday &&
        deathday == other.deathday &&
        gender == other.gender &&
        id == other.id &&
        imdbId == other.imdbId &&
        knownForDepartment == other.knownForDepartment &&
        name == other.name &&
        placeOfBirth == other.placeOfBirth &&
        popularity == other.popularity &&
        profilePath == other.profilePath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, biography.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, deathday.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imdbId.hashCode);
    _$hash = $jc(_$hash, knownForDepartment.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, placeOfBirth.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, profilePath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActDet')
          ..add('adult', adult)
          ..add('biography', biography)
          ..add('birthday', birthday)
          ..add('deathday', deathday)
          ..add('gender', gender)
          ..add('id', id)
          ..add('imdbId', imdbId)
          ..add('knownForDepartment', knownForDepartment)
          ..add('name', name)
          ..add('placeOfBirth', placeOfBirth)
          ..add('popularity', popularity)
          ..add('profilePath', profilePath))
        .toString();
  }
}

class ActDetBuilder implements Builder<ActDet, ActDetBuilder> {
  _$ActDet? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _biography;
  String? get biography => _$this._biography;
  set biography(String? biography) => _$this._biography = biography;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _deathday;
  String? get deathday => _$this._deathday;
  set deathday(String? deathday) => _$this._deathday = deathday;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imdbId;
  String? get imdbId => _$this._imdbId;
  set imdbId(String? imdbId) => _$this._imdbId = imdbId;

  String? _knownForDepartment;
  String? get knownForDepartment => _$this._knownForDepartment;
  set knownForDepartment(String? knownForDepartment) =>
      _$this._knownForDepartment = knownForDepartment;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _placeOfBirth;
  String? get placeOfBirth => _$this._placeOfBirth;
  set placeOfBirth(String? placeOfBirth) => _$this._placeOfBirth = placeOfBirth;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _profilePath;
  String? get profilePath => _$this._profilePath;
  set profilePath(String? profilePath) => _$this._profilePath = profilePath;

  ActDetBuilder();

  ActDetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _biography = $v.biography;
      _birthday = $v.birthday;
      _deathday = $v.deathday;
      _gender = $v.gender;
      _id = $v.id;
      _imdbId = $v.imdbId;
      _knownForDepartment = $v.knownForDepartment;
      _name = $v.name;
      _placeOfBirth = $v.placeOfBirth;
      _popularity = $v.popularity;
      _profilePath = $v.profilePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActDet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActDet;
  }

  @override
  void update(void Function(ActDetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActDet build() => _build();

  _$ActDet _build() {
    final _$result = _$v ??
        new _$ActDet._(
            adult: BuiltValueNullFieldError.checkNotNull(
                adult, r'ActDet', 'adult'),
            biography: BuiltValueNullFieldError.checkNotNull(
                biography, r'ActDet', 'biography'),
            birthday: BuiltValueNullFieldError.checkNotNull(
                birthday, r'ActDet', 'birthday'),
            deathday: deathday,
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'ActDet', 'gender'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'ActDet', 'id'),
            imdbId: BuiltValueNullFieldError.checkNotNull(
                imdbId, r'ActDet', 'imdbId'),
            knownForDepartment: BuiltValueNullFieldError.checkNotNull(
                knownForDepartment, r'ActDet', 'knownForDepartment'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'ActDet', 'name'),
            placeOfBirth: BuiltValueNullFieldError.checkNotNull(
                placeOfBirth, r'ActDet', 'placeOfBirth'),
            popularity: BuiltValueNullFieldError.checkNotNull(
                popularity, r'ActDet', 'popularity'),
            profilePath: BuiltValueNullFieldError.checkNotNull(
                profilePath, r'ActDet', 'profilePath'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
