import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movieticket/model/serializers.dart';

part 'tv_dets.g.dart';

abstract class TvDets implements Built<TvDets, TvDetsBuilder> {


  TvDets._();
  factory TvDets([void Function(TvDetsBuilder) updates]) = _$TvDets;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(TvDets.serializer, this) as Map<String,dynamic>;
  }

  static TvDets? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TvDets.serializer, json);
  }

  static Serializer<TvDets> get serializer => _$tvDetsSerializer;

  bool get adult;

  @BuiltValueField(wireName: 'backdrop_path')
  String get backDropPath;

  @BuiltValueField(wireName: 'episode_run_time')
  BuiltList<int> get episodeRunTime;

  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;


  int get id;

  @BuiltValueField(wireName: 'in_production')
  bool get inProduction;

  BuiltList<String> get language;

  @BuiltValueField(wireName: 'last_air_date')
  String get lastAirDate;

  @BuiltValueField(wireName: 'number_of_episodes')
  int get numberOfEpisode;

  @BuiltValueField(wireName: 'number_of_seasons')
  int get numberOfSeasons;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_name')
  String get originalName;

  String get overview;
  double get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  String get status;
  String get type;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

}