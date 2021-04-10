void main(){
  print(obtenerNombre("Fabricio"));
  print(obtenerNombre2());
  print(obtenerNombre2(valor : 'Juan'));
  print(miFuncion("Fabricio"));
}
var miFuncion = (String valor) => 'Mi nombre es: ${valor}';
String obtenerNombre3([String? valor]) => 'Mi nombre es: ${valor}';
String obtenerNombre(String valor) => 'Mi nombre es: ${valor}';
String obtenerNombre2({String valor = "Fabricio", int? edad}) => 'Mi nombre es: ${valor}';
