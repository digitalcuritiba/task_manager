import 'package:flutter/material.dart';

import 'components/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarefas'),
          leading: const Icon(Icons.add_task),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Task('Aprender Flutter no intervalo do curso!',
                  'assets/images/flutter.png', 2),
              const Task('Andar de Bike', 'assets/images/bike.webp', 5),
              const Task('Meditar', 'assets/images/meditar.jpg', 1),
              const Task('Ler', 'assets/images/ler.jpg', 3),
              const Task('Jogar', 'assets/images/jogar.jpg', 4),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
