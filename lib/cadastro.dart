import 'package:flutter/material.dart';

class cadastro extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 239, 239),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 120, 170),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                ' Create a new' + '\n' + ' account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.all(
                    8.0), // Adicione o valor de preenchimento desejado aqui
                child: GestureDetector(
                  child: Text(
                    'Already registered? Login in here',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: const Color.fromARGB(146, 255, 255, 255)),
                    textAlign: TextAlign.left,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ),
            ],
          ),
          toolbarHeight: 250,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 48.0),
                Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromARGB(255, 0, 120, 170)),
                  textAlign: TextAlign.left,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromARGB(255, 0, 120, 170)),
                  textAlign: TextAlign.left,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromARGB(255, 0, 120, 170)),
                  textAlign: TextAlign.left,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Date of birth',
                  style: TextStyle(
                      fontSize: 16.0, color: Color.fromARGB(255, 0, 120, 170)),
                  textAlign: TextAlign.left,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 64.0),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
                16.0), // Adicionado para arredondar a parte superior
          ),
          child: BottomAppBar(
            color: Color.fromARGB(255, 242, 223, 58),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                height: 100.0, // Define a altura do botão
                width: double.infinity, // Define a largura do botão
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 120, 170),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize:
                          20.0, // Aumenta o tamanho da fonte para tornar o texto do botão maior
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
