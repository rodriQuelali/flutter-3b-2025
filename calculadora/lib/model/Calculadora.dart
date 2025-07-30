
class Calculadora {

  String _num1 = "";
  String _num2 = "";

  Calculadora(this._num1, this._num2);

  String sumar(){
    int? num1 = int.parse(_num1);
    int? num2 = int.parse(_num2);
    int res;
    res = num1 + num2;
    return res.toString();
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
}