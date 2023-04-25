import 'package:built_collection/src/list.dart';
import 'package:http/src/response.dart';
import 'package:movieticket/model/act_mov.dart';
import 'package:movieticket/model/act_tv.dart';
import 'package:movieticket/model/cast.dart';
import 'package:movieticket/model/ind_mov_dets.dart';

import 'package:movieticket/model/movie_dets.dart';
import 'package:movieticket/model/tv_dets.dart';

import '../core/api/api_client.dart';
import '../core/services/api_service.dart';
import '../model/act_det.dart';
import 'api_client_impl.dart';

class _ApiUrls {
  String _apiKey = '89b7237bbcff0fa06e47811bdf0ea123';

  String get _popular =>
      'https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey&language=en-US&page=1';

  String get _topRated =>
      'https://api.themoviedb.org/3/movie/top_rated?api_key=$_apiKey&language=en-US&page=1';

  String get _upComing =>
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$_apiKey&language=en-US&page=1';

  String _movieDetails({required String movieId}) {
    return 'https://api.themoviedb.org/3/movie/$movieId?api_key=$_apiKey&language=en-US';

  }
  String _castList({required String movieId}) =>
      'https://api.themoviedb.org/3/movie/$movieId/credits?api_key=$_apiKey&language=en-US';

  String _actDetails({required String personId}) =>
   'https://api.themoviedb.org/3/person/$personId?api_key=$_apiKey&language=en-US';

  String _actTv({required String personId}) =>
      'https://api.themoviedb.org/3/person/$personId/tv_credits?api_key=$_apiKey&language=en-US';

  String _actMovie({required String personId}) =>
      'https://api.themoviedb.org/3/person/$personId/movie_credits?api_key=$_apiKey&language=en-US';

  String _actTvDets({required String tvId}) =>
      'https://api.themoviedb.org/3/tv/$tvId?api_key=$_apiKey&language=en-US';

}

extension _UrlUtils on String {
  Uri getUri() => Uri.parse(this);
}

class ApiServiceImpl implements ApiService {
  final ApiClient _client = ApiClientImpl();
  final _ApiUrls _urls = _ApiUrls();

  @override
  Future<void> dispose() async {}

  @override
  Future<void> init() async {}

  @override
  Future<BuiltList<MovieDets>> getPopular() async {
    final Response r = await _client.get(_urls._popular.getUri());
    if (r.isSuccess) {
      final List list = r.jsonMap!['results'] as List;
      final List<MovieDets> movies = [];
      for (final i in list) {
        movies.add(MovieDets.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Error';
  }

  @override
  Future<BuiltList<MovieDets>> getToprated() async {
    final Response r = await _client.get(_urls._topRated.getUri());
    if (r.isSuccess) {
      final List list = r.jsonMap!['results'] as List;
      final List<MovieDets> movies = [];
      for (final i in list) {
        movies.add(MovieDets.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Error';
  }

  @override
  Future<BuiltList<MovieDets>> getUpcoming() async {
    final Response r = await _client.get(_urls._upComing.getUri());
    if (r.isSuccess) {
      final List list = r.jsonMap!['results'] as List;
      final List<MovieDets> movies = [];
      for (final i in list) {
        movies.add(MovieDets.fromJson(i));
      }
      return movies.toBuiltList();
    }
    throw 'Error';
  }

  @override
  Future<IndMovDets?> movieDetails({required String movieId}) async {
    final Response r =
    await _client.get(_urls._movieDetails(movieId: movieId).getUri());
    if (r.isSuccess) {
      final Map<String, dynamic> m =
      r.jsonMap as Map<String, dynamic>;
      return IndMovDets.fromJson(m);
    }
    throw 'Error';
  }

  @override
  Future<BuiltList<Cast>> getCastList({required String movieId}) async {
    final Response r = await _client.get(
        _urls._castList(movieId: movieId).getUri());
    if (r.isSuccess) {
      final List list = r.jsonMap!['cast'] as List;
      final List<Cast> cast = [];
      for (final i in list) {
        cast.add(Cast.fromJson(i));
      }
      return cast.toBuiltList();
    }
    throw 'Error';
  }


  @override
  Future<ActDet?> getActorDetails({required String personId}) async {
    final Response r =
    await _client.get(_urls._actDetails(personId: personId).getUri());
    if (r.isSuccess) {
      final Map<String, dynamic> m =
      r.jsonMap as Map<String, dynamic>;
      return ActDet.fromJson(m);
    }
    throw 'Error';
  }

  @override
  Future<BuiltList<ActTv>> getActorTv({required String personId}) async {
    final Response r = await _client.get(_urls._actTv(personId: personId).getUri());
    if (r.isSuccess) {
      final List list = r.jsonMap!['cast'] as List;
      final List<ActTv> tv = [];
      for (final i in list) {
        tv.add(ActTv.fromJson(i)!);
      }
      return tv.toBuiltList();
    }
    throw 'Error';

  }

  @override
  Future<BuiltList<ActMov>> getActorMovies({required String personId}) async {
    final Response r = await _client.get(_urls._actMovie(personId: personId).getUri());
    if (r.isSuccess) {
      final List list = r.jsonMap!['cast'] as List;
      final List<ActMov> movie = [];
      for (final i in list) {
        movie.add(ActMov.fromJson(i)!);
      }
      return movie.toBuiltList();
    }
    throw 'Error';
  }

  @override
  Future<TvDets?> getTvDetails({required String tvId}) async {
    final Response r =
        await _client.get(_urls._actTvDets(tvId: tvId).getUri());
    if (r.isSuccess) {
      final Map<String, dynamic> m =
      r.jsonMap as Map<String, dynamic>;
      return TvDets.fromJson(m);
    }
    throw 'Error';
  }

}