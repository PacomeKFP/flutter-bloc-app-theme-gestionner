import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_gestionner_flutter_with_bloc/theme/view/theme_view.dart';
import '../theme.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        //vien par default avec state à la place de theme
        return MaterialApp(
          theme: theme,
          debugShowCheckedModeBanner: false,
          home: ThemeView(),
        );
      },
    );
  }
}
