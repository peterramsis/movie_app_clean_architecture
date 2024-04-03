import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean/core/services/ServicesLocator.dart';
import 'package:movies_clean/movies/data/datasource/movie_remote_data_sorce.dart';
import 'package:movies_clean/movies/data/repository/movie_repository.dart';
import 'package:movies_clean/movies/domain/repository/base_movie_repository.dart';
import 'package:movies_clean/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:movies_clean/movies/presentation/controller/movie_bloc.dart';
import 'package:movies_clean/movies/presentation/controller/movie_event.dart';
import 'package:movies_clean/movies/presentation/controller/movie_state.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return BlocProvider(create: (context)=> MoviesBloc(sl())..add(GetNowPlayingMoviesEvent()), child: Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: BlocBuilder<MoviesBloc, MovieState>(
        builder: (context, state){
          print(state.nowPlayingState);
          return Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Text("click"),
          );
        },
      ),

    ),);
  }




}
