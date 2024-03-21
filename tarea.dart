class Tarea{
  late String nombre;
  late bool completada;

  Tarea(String n){
    completada = false;
    nombre = n;
  }

  void completar(){
    completada = true;
  }

  void descompletar(){
    completada = false;
  }

  String getTarea(){
    return nombre;
  }
}