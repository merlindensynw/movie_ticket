import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movieticket/model/serializers.dart';

part 'movie_dets.g.dart';

abstract class MovieDets implements Built<MovieDets, MovieDetsBuilder> {
  MovieDets._();

  factory MovieDets([void Function(MovieDetsBuilder) updates]) = _$MovieDets;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieDets.serializer, this) as Map<String,dynamic>;
  }

  static MovieDets fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieDets.serializer, json)!;
  }

  static Serializer<MovieDets> get serializer => _$movieDetsSerializer;

  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  bool get adult;

  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int> get genreIds;

  int get id;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  String get overview;

  double get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  String get title;

  bool get video;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count`')
  int? get voteCount;
}
