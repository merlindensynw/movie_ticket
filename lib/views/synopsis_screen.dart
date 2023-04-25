import 'package:built_collection/src/list.dart';
import 'package:movieticket/model/cast.dart';
import 'package:movieticket/model/ind_mov_dets.dart';
import 'package:movieticket/views/cast_screen.dart';

import '../ui.dart';

class Synopsis extends StatefulWidget {
  const Synopsis({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<Synopsis> createState() => _SynopsisState();
}

class _SynopsisState extends State<Synopsis> with StateMixin {
  @override
  void initState() {
    super.initState();
    getMovieDet();
  }

  Future<void> getMovieDet() async {
    setLoading();
    print(widget.id);
    await context.appViewModel.getMovieDetails(movieid: widget.id.toString());
    resetLoading();
  }

  @override
  Widget build(BuildContext context) {
    final IndMovDets? s = context.appState.movieDetails;
    return Scaffold(
      appBar: AppBar(
        title: Text(s?.title ?? ' '),
        automaticallyImplyLeading: true,
      ),
      body: s == null
          ? Container()
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://image.tmdb.org/t/p/w500/' + s.backdropPath,
                      width: context.mediaQuery.size.width,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Synopsis",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      s.overview,
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Cast",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Characters(
                        id: widget.id,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "About",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Original Title: ${s.title}.\n'
                      ' Status: ${s.status}.\n'
                      'Runtime:${s.runtime}.\n'
                      'Premier:${s.releaseDate} \n'
                      'Budget:${s.budget}\n'
                      'Revenue:${s.revenue}\n',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

class Characters extends StatefulWidget {
  const Characters({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<Characters> createState() => _CharactersState();
}

class _CharactersState extends State<Characters> with StateMixin {
  @override
  void initState() {
    super.initState();
    getCast();
  }

  Future<void> getCast() async {
    setLoading();
    await context.appViewModel.getCastDetails(movieId: widget.id.toString());
    resetLoading();
  }

  @override
  Widget build(BuildContext context) {
    final BuiltList<Cast> casts = context.appState.getCastList ?? BuiltList();
    return Container(
      padding: EdgeInsets.all(8),
      height: 180,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            casts.length,
            (index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder:(BuildContext) => MovieCharacter(id: casts[index].id),
                      ),
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.network(
                        'https://image.tmdb.org/t/p/w500/' +
                            (casts[index].profilePath??''),
                        height: 120,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                      Text(casts[index].name),
                    ],

                  ),
                ),
              );
            },
          )),
    );
  }
}
