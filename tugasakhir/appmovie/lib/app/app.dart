import 'package:flutter/material.dart';

import 'package:appmovie/app/blocs/movies_bloc_provider.dart';

import 'package:appmovie/app/ui/widgets/custom_app_bar.dart';
import 'package:appmovie/app/ui/movie_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new MoviesBlocWidget(
          child: new Container(
            child: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new CustomAppBar(),
                new MoviesList()
              ],
            ),
          ),
        )
    );
  }
}