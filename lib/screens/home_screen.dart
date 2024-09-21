import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 67, 132, 235), //0xff => #
        titleTextStyle: TextStyle(
          color: Colors.white, // Cor do texto de AppBar
          fontSize: 20,
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            // Foto de perfil do usuário no lado direito
            child: GestureDetector(
              onTap: () {
                // Ação ao clicar na foto de perfil
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            //exibir a imagrm arredondada
                            ClipOval(
                              child: Image.asset('lib/assets/images/alexya.png',
                              width: 200, // largura da imagem
                              height: 200, 
                              fit: BoxFit.cover, //faz a imagem cobrir o circulo
                              // altura da imagem
                              ),
                              ),
                              SizedBox(height: 10),
                               TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); //fecha a foto
                                },
                          child: Text("Fechar"),
                        ),
                      ],),
                    ), );
                  },
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/images/alexya.png'),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu Lateral',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Página Inicial'),
              onTap: () {
                // Ação ao clicar
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                // Ação ao clicar
                Navigator.pop(context); //Fecha o drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: () {
                // Ação ao clicar
                Navigator.pop(context); // Fecha o drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/café.png', // caminho para imagem local
              width: 150,
              height: 150,
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
