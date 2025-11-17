String printerError(String s) {
  // creamos un string con las letras que debe contener el texto dado
  String melo = "abcdefghijklm";
  // dividimos la cadena
  List<String> hola = s.split("");
  
  int contador = 0;
  // recorremos el array
  for(var a in hola){
    // si contiene la letra, no hacemos nada
    if(melo.contains(a)){
      continue;
    }else{
      // sino, aumentamos el contador de errores de impresion
      contador++;
    }
  }
  // retornamos las letras erroneas y el numero le tras totales
  return contador.toString() +"/" +hola.length.toString();
}
