import 'package:flutter/material.dart';
import 'package:task_app/src/models/task_model.dart';
import 'src/blocs/bloc_exports.dart';
import 'src/screens/tasks_screen.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const AppState()));
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(),
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tasks App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TasksScreen(),
    );
  }
}
