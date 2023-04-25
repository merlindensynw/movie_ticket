import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movieticket/model/serializers.dart';

part 'act_mov.g.dart';

abstract class ActMov implements Built<ActMov, ActMovBuilder> {


  ActMov._();
  factory ActMov([void Function(ActMovBuilder) updates]) = _$ActMov;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ActMov.serializer, this) as Map<String,dynamic>;
  }

  static ActMov? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ActMov.serializer, json);
  }

  static Serializer<ActMov> get serializer => _$actMovSerializer;

  bool? get adult;

  @BuiltValueField(wireName: 'backdrop_path')
  String? get backDropPath;

  int get id;

  @BuiltValueField(wireName: 'original_language')
  String? get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String? get originalTitle;

  String? get overview;

  double? get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;

  @BuiltValueField(wireName: 'release_date')
  String? get releaseDate;

  String? get title;

  bool? get video;

  @BuiltValueField(wireName: 'vote_average')
  double? get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int? get voteCount;

  String? get character;

  @BuiltValueField(wireName: 'credit_id')
  String? get creditId;

  int? get order;

}