
class Calculadora {

  String _num1 = "";
  String _num2 = "";

  Calculadora(this._num1, this._num2);

  // Crear una clase que que valide los datos de entrada y oiperador, y la llame al clase Calculadora.
  // utlizar POO, asociacion, agregacion o dependencia. 
  // y verificar que principio es SOLID.
  // rediseño La UI de la calculadora.
  // UI solo tiene que llamar ala clase validar, no tiene que realizar ninguna operacion.

  String sumar(){
    String data = valiadarDatosEntrada(_num1, _num2);
    if (data != "") {
      return data; // Retorna el mensaje de error si los datos no son válidos
    }
    double res;
    res = double.parse(_num1) + double.parse(_num2);
    return validarNumerosDecimales(res).toString();
  }

  double restar(){
    return double.parse(_num1) - double.parse(_num2);
  }

  double multiplicar(){
    return double.parse(_num1) * double.parse(_num2);
  }
  
  double dividir(){
    if(double.parse(_num2) == 0){
      // exeption es manejo cuando no deve mostrar un mensaje de error de codigo....
      //throw Exception("División por cero");
      return double.nan; // Retorna NaN (Not a Number) para indicar un error en la división
    }
    return double.parse(_num1) / double.parse(_num2);
  }

  String validarNumerosDecimales(double numero){
   if(numero % 1.0 == 0.0){
      return numero.toInt().toString(); // Si el resultado es un entero, lo devuelve como entero
    }
    return numero.toString();
  }

 static String valiadarDatosEntrada(String num1, String num2) {
    double? num_1 = double.tryParse(num1);
    double? num_2 = double.tryParse(num2);
    if (num_1 == null || num_2 == null) {
        return "Ingresa números válidos";
    }
    return "";
  }

  //funcion optenerOperador
}