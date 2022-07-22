import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_gestionner_flutter_with_bloc/theme/cubit/theme_cubit.dart';
import 'package:theme_gestionner_flutter_with_bloc/theme/theme.dart';

class ThemeView extends StatelessWidget {
  ThemeView({Key? key}) : super(key: key);

  final List themeList = [
    {
      'title': 'Violet Clair',
      'color': Colors.purple,
      'brightness': Brightness.light,
    },
    {
      'title': 'Violet foncé',
      'color': Colors.deepPurple,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Rose Clair',
      'color': Colors.pink,
      'brightness': Brightness.light,
    },
    {
      'title': 'Rose Très Clair',
      'color': Colors.pinkAccent,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Orange clair',
      'color': Colors.orange,
      'brightness': Brightness.light,
    },
    {
      'title': 'Orange très Clair',
      'color': Colors.orangeAccent,
      'brightness': Brightness.light,
    },
    {
      'title': 'Orange foncé',
      'color': Colors.deepOrange,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Rouge clair',
      'color': Colors.redAccent,
      'brightness': Brightness.light,
    },
    {
      'title': 'Rouge foncé',
      'color': Colors.red,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Vert clair',
      'color': Colors.greenAccent,
      'brightness': Brightness.light,
    },
    {
      'title': 'Vert foncé',
      'color': Colors.green,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Bleue clair',
      'color': Colors.blueAccent,
      'brightness': Brightness.light,
    },
    {
      'title': 'Bleue foncé',
      'color': Colors.blue,
      'brightness': Brightness.dark,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GridView.builder(
          itemCount: themeList.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2),
          itemBuilder: (context, index) {
            return Card(
              color: themeList[index]['color'],
              child: InkWell(
                onTap: () {
                  context.read<ThemeCubit>().changeTheme(
                      themeList[index]['color'],
                      themeList[index]['brightness']);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(themeList[index]['title']),
                    ),
                    Container(
                        height: 25,
                        color:
                            themeList[index]['brightness'] == Brightness.light
                                ? Colors.white54
                                : Colors.black54)
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Demopage())));
        },
        child: const Icon(Icons.open_in_new, color: Colors.white),
      ),
    );
  }
}
