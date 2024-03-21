import 'package:tareas/tarea.dart';

class GestorTareas {
  late List<Tarea> tareas;
  
  GestorTareas(){
    tareas = [];
  }

  void agregarTarea(String nombre) {
    tareas.add(Tarea(nombre));
  }

  void completarTarea(int index) {
    tareas[index].completar();
  }

  void descompletarTarea(int index) {
    tareas[index].descompletar();
  }

  void eliminarTarea(int index) {
    tareas.removeAt(index);
  }
}
