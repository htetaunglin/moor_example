import 'package:flutter/material.dart';
import 'package:moor_example/data/moor_database.dart';
import 'package:moor_example/ui/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AppDatabase().taskDao,
      child: MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}
