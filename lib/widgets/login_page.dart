import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = "login_page";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 44, 135, 141),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "KANAMY".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Registrar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                _textFieldName(),
                const SizedBox(
                  height: 25.0,
                ),
                _textFieldEmail(),
                const SizedBox(
                  height: 25.0,
                ),
                _textFieldPassword(),
              ],
            ),
          )),
    );
  }

  Widget _textFieldName() {
    //Botón de nombre
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person_2_outlined),
            labelText: "Nombre",
            hintText: "Miguel Angel Isaza Aguirre"),
        onChanged: (value) {},
      ),
    );
  }

  _textFieldEmail() {
    //Botón de Correo
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.email_outlined),
            labelText: "Correo",
            hintText: "Ejemplo@email.com"),
        onChanged: (value) {},
      ),
    );
  }

  _textFieldPassword() {
    //Botón de contraseña
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline_rounded),
            labelText: "Contraseña",
            hintText: "********"),
        onChanged: (value) {},
      ),
    );
  }
}
