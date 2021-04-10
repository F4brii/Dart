abstract class Persona{
  String? nombre;
  String? apellido;
  int? edad;

  Persona([this.nombre, this.apellido, this.edad]);
}

class Padre extends Persona{
  int? Hijos;

  Padre([this.Hijos]) : super('Fabricio', 'Caicedo', 25);
  Padre.Cargar([this.Hijos]);
}

void main(){
  //var persona = Persona('Fabricio', 'Caicedo', 25);
  var padre = Padre(5);
  var padre2 = Padre.Cargar(5);
  //print(persona.toString());
}