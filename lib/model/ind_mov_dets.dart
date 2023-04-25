import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'ind_mov_dets.g.dart';

abstract class IndMovDets implements Built<IndMovDets, IndMovDetsBuilder> {
  IndMovDets._();
  factory IndMovDets([void Function(IndMovDetsBuilder) updates]) = _$IndMovDets;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(IndMovDets.serializer, this) as Map<String,dynamic>;
  }

  static IndMovDets? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(IndMovDets.serializer, json);
  }

  static Serializer<IndMovDets> get serializer => _$indMovDetsSerializer;
  bool get adult;
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  BuiltList<Genre> get genres;
  int get id;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  String get overview;

  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  String get status;

  String get tagline;

  String get title;

  bool get video;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  double get voteCount;

  int get runtime;

  int get budget;
  int get revenue;



}
abstract class Genre implements Built<Genre, GenreBuilder> {


  Genre._();
  factory Genre([void Function(GenreBuilder) updates]) = _$Genre;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Genre.serializer, this) as Map<String,dynamic>;
  }

  static Genre? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Genre.serializer, json);
  }

  static Serializer<Genre> get serializer => _$genreSerializer;
  int get id;
  String get name;
}