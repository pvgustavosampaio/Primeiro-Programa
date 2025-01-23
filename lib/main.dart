// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Introdução',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo!'),
        backgroundColor: Color.fromARGB(171, 54, 213, 221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _apresentation().animate().fadeIn(duration: 1000.ms).slideY(),
            const SizedBox(height: 16.0),
            _aboutMe().animate().fadeIn(duration: 1000.ms).slideX(),
            const SizedBox(height: 16.0),
            _projectsSection()
                .animate()
                .fadeIn(duration: 1000.ms)
                .slideY(),
            const SizedBox(height: 16.0),
            _contactInformation().animate().fadeIn(duration: 1000.ms).slideX(),
          ],
        ),
      ),
    );
  }

  Widget _apresentation() {
    return const Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 16.0),
          Text(
            'Olá, eu sou Gustavo',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _aboutMe() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sobre Mim',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Sou um estudante de programação do curso talento tech,estou desenvolvendo minhas habilidades de escrever e criar softwares',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Estou estudando sobre diversos materias da área de tecnologia, como o python, html e agora o dart e o flutter, ainda ganhando experiencia com banco de dados.',
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _projectsSection() {
    return Card(
      color: Colors.black,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Projetos Recentes',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. App de Organização Comunitária - A função é organizar a coleta de lixo reciclavél na sociedade, tendo o registro de cada coleta, com a localização, nome, tipo do lixo e data da coleta.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              '2. Jogo da Forca - Projeto realizado apenas como diversão no Python.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactInformation() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Contatos',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Email: henriquesampaiogustavo@gmail.com',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Telefone: (43) 99991-52649',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
