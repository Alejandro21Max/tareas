import 'package:flutter/material.dart';
import 'package:tareas/tarea.dart';
import 'package:tareas/gestor_tareas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestor Tareas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Gestor Tareas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
TextEditingController tareaController = TextEditingController();
GestorTareas gestorTareas = GestorTareas();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: tareaController,
                      decoration: const InputDecoration(hintText: 'descripción de la tarea'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      if (tareaController.text.isEmpty) {
                        return;
                      }
                      gestorTareas.agregarTarea(tareaController.text);
                      setState(() {});
                      tareaController.clear();
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
