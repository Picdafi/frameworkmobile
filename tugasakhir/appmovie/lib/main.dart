import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:appmovie/app/theme.dart';

import 'app/app.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
        MaterialApp(
            title: 'Movies',
            debugShowCheckedModeBanner: false,
            theme: themeData,
            home: App()
        )
    );
  });
}