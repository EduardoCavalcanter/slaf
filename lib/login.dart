import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 120, 170),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/aviao.jpeg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 42.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.0),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(
                        8.0), // Adicione o valor de preenchimento desejado aqui
                    child: GestureDetector(
                      child: Text(
                        'Sign in to continue',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/segunda');
                      },
                    ),
                  ),
                ),
                SizedBox(height: 48.0),
                Text(
                  'Name',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 32.0),
                Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 32.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 242, 223, 58),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 20.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/terceira');
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 120, 170),
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
