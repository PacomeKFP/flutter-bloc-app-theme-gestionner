import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'theme_observer.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const ThemeApp()),
      blocObserver: ThemeBlocObserver());
}
