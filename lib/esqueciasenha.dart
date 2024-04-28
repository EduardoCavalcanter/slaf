import 'package:flutter/material.dart';

class esqueciasenha extends StatelessWidget {
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
              Padding(
                padding: EdgeInsets.all(
                    8.0), // Adicione o valor de preenchimento desejado aqui
                child: GestureDetector(
                  child: Icon(Icons.arrow_back, color: Colors.white),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ),
              Text(
                '  Forgot' + '\n' + '  password',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8.0),
              Text(
                '     new password',
                style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(146, 255, 255, 255)),
                textAlign: TextAlign.left,
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
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/cadeado.jpeg',
                    //fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                      10.0), // Adicione o valor de preenchimento desejado aqui
                  child: Text(
                    "Enter your email, phone or username and we'll send you a link to change a new password",
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Color.fromARGB(255, 0, 120, 170)),
                    textAlign: TextAlign.center, // Centraliza o texto
                  ),
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
                    'SEND',
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
