import 'package:built_collection/built_collection.dart';
import 'package:movieticket/model/act_det.dart';
import 'package:movieticket/model/act_mov.dart';
import 'package:movieticket/views/synopsis_screen.dart';
import 'package:movieticket/views/synopsis_tv.dart';

import '../model/act_tv.dart';
import '../ui.dart';
import 'package:flutter/material.dart';

class MovieCharacter extends StatefulWidget {
  final int id;
  const MovieCharacter ({Key? key, required this.id}) : super(key: key);

  @override
  State<MovieCharacter> createState() => _MovieCharacterState();
}

class _MovieCharacterState extends State<MovieCharacter> with StateMixin{
  @override
  void initState() {

    super.initState();
    getMovieAct();
  }
  Future<void> getMovieAct() async {
    setLoading();
    await context.appViewModel.getActorDetails(personId: widget.id.toString());
    resetLoading();
  }
  Widget build(BuildContext context) {
    final ActDet? s = context.appState.getActDets;
    return Scaffold(
      appBar: AppBar(
        title: Text(s?.name ?? ' '),
       automaticallyImplyLeading: true,

      ),
    body: s == null
    ? Container()
        : Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
               'https://image.tmdb.org/t/p/w500/' + s.profilePath,
                height: 120,
                  width: 120,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Birthday:${s.birthday}",style: TextStyle(fontSize: 20),),
                    Text("Gender :${s.gender}",style: TextStyle(fontSize: 20),) ,
                    SizedBox(
                      width: 250,
                      child: Text("Place of birth: ${s.placeOfBirth}",style: TextStyle(fontSize: 20),
                       maxLines: 3,
                      ),
                    )
                  ],
                ),
              ],
            ),
            MoviesTv(id: widget.id),
          ],
        ),
      ),
    ),);

  }
}
class MoviesTv extends StatefulWidget {
  final int id;
  const MoviesTv({Key? key, required this.id}) : super(key: key);

  @override
  State<MoviesTv> createState() => _MoviesTvState();
}

class _MoviesTvState extends State<MoviesTv> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 500,
      child: Column(
        children: [
          TabBar(
            controller: controller,
            tabs: [
              Tab(
                text: "Movies",
              ),
              Tab(
                text: "Tv",
              ),
            ],
          ),
          Expanded(
            child: TabBarView
              (
                controller: controller,
                children: [
                  Tab(
                    child: ActorMovies(id: widget.id),
                  ),
                  Tab(
                    child: TvShow(id: widget.id),
                  )
                ]),
          )
        ],

      ),
    );
  }
}
class ActorMovies extends StatefulWidget {
  final int id;
  const ActorMovies({Key? key, required this.id}) : super(key: key);

  @override
  State<ActorMovies> createState() => _ActorMoviesState();
}

class _ActorMoviesState extends State<ActorMovies> with StateMixin{
  @override
  void initState() {
    super.initState();
    getActMov();
  }
  Future<void> getActMov() async {
    setLoading();
    await context.appViewModel.getActorMovie(personId: widget.id.toString());
    resetLoading();
  }



  Widget build(BuildContext context) {
    final BuiltList<ActMov>? u = context.appState.actorMovies;

    return Container(
      padding: EdgeInsets.all(12.0),
      child: GridView.count(
        childAspectRatio: 0.6,
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(u?.length??0, (index) {
          final ActMov t=u![index];
          return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Synopsis(id: t.id),
              ),
            );
          },
            child: Column(
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/w500/'+ ( t?.backDropPath??'')
                ),
                Text(t?.originalTitle??'')

              ],
            ),
          );
        }
        ),
      ),
    );

  }
}

class TvShow extends StatefulWidget {
  final int id;
  const TvShow({Key? key, required this.id}) : super(key: key);

  @override
  State<TvShow> createState() => _TvShowState();
}

class _TvShowState extends State<TvShow> with StateMixin{
  @override
  void initState() {
    super.initState();
    getActTv();
  }
  Future<void> getActTv() async {
    setLoading();
    await context.appViewModel.getActorTv(personId: widget.id.toString());
    resetLoading();
  }
  Widget build(BuildContext context) {
    final BuiltList<ActTv>? a = context.appState.actorTv;
    return Container(
      padding: EdgeInsets.all(12.0),
      child: GridView.count(
        childAspectRatio: 0.6,
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(a?.length??0, (index) {
          final ActTv r=a![index];
          return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SynopsisTv(id: r.id??0),
              ),
            );
          },
            child: Column(
              children: [
                Image.network(
                'https://image.tmdb.org/t/p/w500/' + (r?.backDropPath??'')
                ),
                Text(r?.originalName??'')

              ],
            ),
          );
        }
        ),
      ),

    );
  }
}


