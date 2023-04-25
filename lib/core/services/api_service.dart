import 'package:built_collection/built_collection.dart';
import 'package:movieticket/core/services/app_service.dart';
import 'package:movieticket/model/movie_dets.dart';

import '../../model/act_det.dart';
import '../../model/act_mov.dart';
import '../../model/act_tv.dart';
import '../../model/cast.dart';
import '../../model/ind_mov_dets.dart';
import '../../model/tv_dets.dart';

abstract class ApiService extends AppService {
  Future<BuiltList<MovieDets>> getPopular();

  Future<BuiltList<MovieDets>> getToprated();

  Future<BuiltList<MovieDets>> getUpcoming();

  Future<IndMovDets?> movieDetails({required String movieId});

  Future<BuiltList<Cast>> getCastList({required String movieId});

  Future<ActDet?> getActorDetails({required String personId});

  Future<BuiltList<ActTv>> getActorTv({required String personId});

  Future<BuiltList<ActMov>> getActorMovies({required String personId});

  Future<TvDets?> getTvDetails({required String tvId});



}
