import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result){
              if(result == 'Formulário'){
                Navigator.pushNamed(context, '/form');
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'Formulário',
                child: Text('Ir para o formulário'),  
              ),
              PopupMenuItem<String>(
                value: 'Compras',
                child: Text('Compras'),
              ),
              PopupMenuItem<String>(
                value: 'Contato',
                child: Text('Contato'),
              ),
            ],
            ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/camale.jpg', // Caminho para a imagem local
              width: 150,
              height: 100,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: Text('Ir para o formulário'),
            ),
          ],
        ),
      ),
    );
  }
}