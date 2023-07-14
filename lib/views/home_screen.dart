import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movieticket/model/movie_dets.dart';
import 'package:movieticket/ui.dart';
import 'package:movieticket/views/synopsis_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Movie',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    darkTheme: ThemeData.dark(),
    themeMode: _themeMode,
    debugShowCheckedModeBanner: false,
    home: Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
            ),
            backgroundColor: Colors.grey,
            elevation: 0,
            title: Text("Book Movie",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "Top Rated",
                ),
                Tab(
                  text: "Upcoming",
                )
              ],
            ),
            actions: [
              IconButton(
                icon:Icon(
                    Icons.dark_mode
                ),
                onPressed: () {
                changeTheme(ThemeMode.dark);
              },
              ),
              IconButton(
                icon: Icon(
                  Icons.light_mode
                ),
                  onPressed: (){
                    changeTheme(ThemeMode.light);
                  }
                  )
            ],),
          body: Container(
            child: TabBarView(children: [
              Container(
                child: MovieGridView(
                  type: MovieType.popular,
                ),
              ),
              Container(
                child: MovieGridView(
                  type: MovieType.topratted,
                ),
              ),
              Container(
                child: MovieGridView(
                  type: MovieType.upcoming,
                ),
              )
            ]),
          ),
        ),
      ),
    ),
    );
  }
}


enum MovieType {
  popular,
  upcoming,
  topratted,
}

class MovieGridView extends StatefulWidget {
  const MovieGridView({Key? key, required this.type}) : super(key: key);
  final MovieType type;

  @override
  State<MovieGridView> createState() => _MovieGridViewState();
}

class _MovieGridViewState extends State<MovieGridView> with StateMixin {
  @override
  void initState() {
    super.initState();
    getMovies();
  }

  Future<void> getMovies() async {
    setLoading();
    switch (widget.type) {
      case MovieType.popular:
        await context.appViewModel.getPopular();
        break;
      case MovieType.upcoming:
        await context.appViewModel.getToprated();
        break;
      case MovieType.topratted:
        await context.appViewModel.getUpcoming();
        break;
    }
    resetLoading();
  }

  @override
  Widget build(BuildContext context) {
    BuiltList<MovieDets> popularList =
        context.appState.popularList ?? BuiltList();
    BuiltList<MovieDets> upcomingList =
        context.appState.upcomingList ?? BuiltList();
    BuiltList<MovieDets> toprattedList =
        context.appState.topratedList ?? BuiltList();
    List<MovieDets> list;
    switch (widget.type) {
      case MovieType.popular:
        list = popularList.toList();
        break;
      case MovieType.upcoming:
        list = upcomingList.toList();
        break;
      case MovieType.topratted:
        list = toprattedList.toList();
        break;
    }
    return loading
        ? CircularProgressIndicator()
        : Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.count(
              childAspectRatio: 0.6,
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: List.generate(list.length, (index) {
                final MovieDets v = list[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Synopsis(id: v.id),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Image.network(
                        'https://image.tmdb.org/t/p/w500/' + v.backdropPath,
                        height: 160,
                        width: 140,
                        fit: BoxFit.fill,
                      ),
                      Text(v.title)
                    ],
                  ),
                );
              }),
            ),
          );
  }
}
