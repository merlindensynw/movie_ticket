import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movieticket/model/serializers.dart';

part 'act_det.g.dart';

abstract class ActDet implements Built<ActDet, ActDetBuilder> {
  ActDet._();
  factory ActDet([void Function(ActDetBuilder) updates]) = _$ActDet;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ActDet.serializer, this) as Map<String,dynamic>;
  }

  static ActDet? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ActDet.serializer, json);
  }

  static Serializer<ActDet> get serializer => _$actDetSerializer;
  bool get adult;
  String get biography;
  String get birthday;
  String? get deathday;
  int get gender;
  int get id;

  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;

  @BuiltValueField(wireName: 'known_for_department')
  String get knownForDepartment;

  String get name;

  @BuiltValueField(wireName: 'place_of_birth')
  String get placeOfBirth;

  double get popularity;

  @BuiltValueField(wireName: 'profile_path')
  String get profilePath;

}