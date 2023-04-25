import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movieticket/model/serializers.dart';

part 'act_tv.g.dart';

abstract class ActTv implements Built<ActTv, ActTvBuilder> {
  ActTv._();
  factory ActTv([void Function(ActTvBuilder) updates]) = _$ActTv;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ActTv.serializer, this) as Map<String,dynamic>;
  }

  static ActTv? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ActTv.serializer, json);
  }

  static Serializer<ActTv> get serializer => _$actTvSerializer;

  bool? get adult;

  @BuiltValueField(wireName: 'backdrop_path')
  String? get backDropPath;

  int? get id;

  @BuiltValueField(wireName: 'original_language')
  String? get originalLanguage;

  @BuiltValueField(wireName: 'original_name')
  String? get originalName;

  String get overview;
  double? get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;

  @BuiltValueField(wireName: 'first_air_date')
  String? get firstAirDate;

  String? get name;

  @BuiltValueField(wireName: 'vote_average')
  double? get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int? get voteCount;

  String? get character;

  @BuiltValueField(wireName: 'credit_id')
  String? get creditId;

  @BuiltValueField(wireName: 'episode_count')
  int? get episodeCount;

  @BuiltValueField(wireName: 'origin_country')
  BuiltList<String> get originCountry;

  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int?> get genreIds;

}