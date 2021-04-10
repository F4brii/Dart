import '../3.Funciones/funciones.dart';

void main(){
  
  print(obtenerNombre("Juan"));

  try{
    print(obtenerNombre("Fabricio"));
  }on FormatException catch(e){
    print("Se produjo un error Exception");
  }catch(e){
    print("Se produjo un error");
  } finally{
    print("Continua el flujo con o sin error");
  }
}

String obtenerNombre(String? nombre) => nombre == "Fabricio" ? throw FormatException("El nombre no puede se $nombre") : 'Mi nombre es $nombre';