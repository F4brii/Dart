void main() {

  //Tipos Numericos
  int edad = 25;
  double estatura = 1.80;

  print('Edad: ${edad}');
  print(estatura.abs());
  print(estatura.ceilToDouble());
  print(estatura.floorToDouble());

  edad.isNegative ? print('Es Negativo') : print('Es positivo');

  //Textos o Cadenas de caracteres
  //Strings
  var texto1 = 'Hola mundo';
  var texto2 = "Hola Mundo";
  var texto3 = 'Entre comilla "Hola"';
  var texto4 = 'It\'s';
  var texto5 = "It's";
  var texto6 = '4 + 9 = ${4+9}';
  var texto7 = texto1 + texto2;
  var texto8 = "texto1"  "texto2";
  var texto9 = "Edad: \'$edad \'";
  var texto10 = ''' 
  Nombre: Fabricio Caicedo
  Edad: 25
  Estatura: 1.80
  ''';
  var texto11 = 'Nombre: Fabricio Caicedo \nEdad: 25';

  print(texto6);
  print(texto9);
  print(texto10);
  print(texto11);


  //Booleans
  bool True = true;
  bool False = false;

  print("Valor true: ${True}");
  print("Valor false: ${False}");

  //Listas
  var lista1 = ["Fabricio Caicedo", 25];
  List<String> lista2 = ["Fabricio Caicedo", "25"];
  var lista3 = [1.80, ...lista1, ...lista2];

  print('Lista 1 = ${lista1}');
  print('Lista 1 = ${lista1.first}');
  print('Lista 2 = ${lista2.reversed}');
  print('Lista 2 = ${lista2.last}');
  lista2.clear();
  print('Lista 2 = ${lista2}');
  print('Lista 3 = ${lista3}');

  //Sets
  var sets1 = {"Mazda"};
  sets1.add("Mazda");
  print(sets1);

  //Maps
  var traslaton = {'nombre': 'Fabricio'};
  traslaton['edad'] = '25';

  print(traslaton);

}