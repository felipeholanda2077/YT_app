import 'package:flutter/material.dart';
import 'package:youtube_app/telas/Biblioteca.dart';
import 'package:youtube_app/telas/EmAlta.dart';
import 'package:youtube_app/telas/Inicio.dart';
import 'package:youtube_app/telas/Inscricoes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _idiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricoes(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
            "imagens/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("acao: pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){
              print("acao: conta");
            },
          ),
        ],
      ),
      body: telas[_idiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _idiceAtual,
        onTap: (indice){
          setState(() {
            _idiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                label: 'Início',
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: 'Em alta',
              icon: Icon(Icons.whatshot),
            ),
            BottomNavigationBarItem(
              label: 'Inscrições',
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(
              label: 'Biblioteca',
              icon: Icon(Icons.folder),
            ),
          ]
      ),
    );
  }
}
