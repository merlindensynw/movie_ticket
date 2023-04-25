import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movieticket/model/act_det.dart';
import 'package:movieticket/model/act_mov.dart';
import 'package:movieticket/model/act_tv.dart';
import 'package:movieticket/model/ind_mov_dets.dart';
import 'package:movieticket/model/tv_dets.dart';
import 'cast.dart';
import 'movie_dets.dart';
import 'serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder)? updates]) = _$AppState;

  AppState._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AppState.serializer, this)
        as Map<String, dynamic>?;
  }

  static AppState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppState.serializer, json);
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;

  BuiltList<MovieDets>? get popularList;
  BuiltList<MovieDets>? get topratedList;
  BuiltList<MovieDets>? get upcomingList;
  IndMovDets? get movieDetails;
  BuiltList<Cast>? get getCastList;
  ActDet? get getActDets;
  BuiltList<ActTv>? get actorTv;
  BuiltList<ActMov>? get actorMovies;
  TvDets? get tvDetails;


}
