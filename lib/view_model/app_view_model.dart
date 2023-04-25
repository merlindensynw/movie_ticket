import 'package:built_collection/src/list.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movieticket/core/services/api_service.dart';
import 'package:movieticket/data/api_service_impl.dart';
import 'package:movieticket/model/act_det.dart';
import 'package:movieticket/model/act_mov.dart';
import 'package:movieticket/model/act_tv.dart';
import 'package:movieticket/model/ind_mov_dets.dart';
import 'package:movieticket/model/movie_dets.dart';
import 'package:movieticket/model/tv_dets.dart';
import 'package:state_notifier/state_notifier.dart';

import '../core/view_model/view_model.dart';
import '../model/app_state.dart';
import '../model/cast.dart';
import '../provider/app_state_notifier.dart';
import '../ui.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AppViewModel, AppState>(
      create: (_) => AppViewModel(),
      child: child,
    );
  }
}

class AppViewModel extends AppStateNotifier<AppState>
    with LocatorMixin
    implements AppBaseViewModel {
  AppViewModel() : super(AppState());
  ApiService apiService = ApiServiceImpl();

  @override
  Future<void> init() async {}

  Future<void> getPopular() async {
    final BuiltList<MovieDets> m = await apiService.getPopular();
    state = state.rebuild(
      (p0) => p0.popularList = m.toBuilder(),
    );
  }

  Future<void> getToprated() async {
    final BuiltList<MovieDets> m = await apiService.getToprated();
    state = state.rebuild(
      (p0) => p0.topratedList = m.toBuilder(),
    );
  }

  Future<void> getUpcoming() async {
    final BuiltList<MovieDets> m = await apiService.getUpcoming();
    state = state.rebuild(
      (p0) => p0.upcomingList = m.toBuilder(),
    );
  }

  Future<void> getMovieDetails({required String movieid}) async {
    final IndMovDets? s = await apiService.movieDetails(movieId: movieid);
    state = state.rebuild((p0) => p0.movieDetails = s?.toBuilder());
  }

  Future<void> getCastDetails({required String movieId}) async{
    final BuiltList<Cast> c=await apiService.getCastList(movieId: movieId);
    state=state.rebuild((p0) => p0.getCastList=c.toBuilder());
  }

  Future<void> getActorDetails({required String personId}) async {
    final ActDet? c=await apiService.getActorDetails(personId: personId);
    state=state.rebuild((p0) => p0.getActDets= c?.toBuilder());
  }

  Future<void> getActorTv({required String personId}) async {
    final BuiltList<ActTv> d=await apiService.getActorTv(personId: personId);
    state=state.rebuild((p0) => p0.actorTv= d?.toBuilder());
  }

  Future<void> getActorMovie({required String personId}) async {
    final  BuiltList<ActMov> o =await apiService.getActorMovies(personId: personId);
    state=state.rebuild((p0) => p0.actorMovies= o?.toBuilder());
  }

  Future<void> getTvDetails({required String tvId}) async {
    final TvDets? c=await apiService.getTvDetails(tvId: tvId);
    state=state.rebuild((p0) => p0.tvDetails= c?.toBuilder());
  }


}



