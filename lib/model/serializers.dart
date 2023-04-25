library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movieticket/model/act_det.dart';
import 'package:movieticket/model/act_mov.dart';
import 'package:movieticket/model/act_tv.dart';
import 'package:movieticket/model/cast.dart';
import 'package:movieticket/model/ind_mov_dets.dart';
import 'package:movieticket/model/tv_dets.dart';

import 'app_state.dart';
import 'movie_dets.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  MovieDets,
  IndMovDets,
  Genre,
  Cast,
  ActDet,
  ActTv,
  ActMov,
  TvDets,

])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
