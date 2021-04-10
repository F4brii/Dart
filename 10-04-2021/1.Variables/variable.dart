void main() {

  //Tipos de variables
  String nombre = "Fabricio";
  var apellido;
  int edad = 25;
  String telefono = "300015065";

  String? variableAceptaNull = null;

  final int variableConstante = 1; 
  //variableConstante += 1; Genera error porque es una constante

  //Imprimir cada variable

  print('Persona ');
  print('Nombre: ${nombre} ${apellido}');
  print('Edad: ${edad}');
  print('Telefono: ${telefono}');

  print('');
  print('Variable nula: ${variableAceptaNull} ');

  print('');
  print('Variable constante: ${variableConstante} ');
}