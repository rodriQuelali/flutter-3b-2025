import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"), backgroundColor: Colors.amber),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Center(child: titlo(),),
          SizedBox(height: 20),
          inputText(),
          SizedBox(height: 20),
          inputText(),
          SizedBox(height: 20),
          buttonLogin(),
        ]),
      ),
    );
  }

  Widget buttonLogin(){
    return ElevatedButton(
      onPressed: () {
        // Acción al presionar el botón
      },
      child: Text("Iniciar Sesión"),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }

  Widget inputText() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Ingrese su nombre",
        hintText: "Nombre",
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.person),
      ),
    );
  }

  Widget imgLogin(){
    return Image.asset(
      "assets/images/login.png",
      width: 200,
      height: 200,
      fit: BoxFit.cover,
    );
  }

  Widget titlo() {
    return Text(
      "Hola tercero Login B",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget titulo2() {
    return Text("Hola segundo Login B");
  }
}
