import 'package:dart/task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo Dilione Nobre',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 46, right: 46),
            child: Text(style: TextStyle(fontSize: 24, color: Colors.black87,), "Aplicativo de Tarefas"),
          ),
        ),
        body: ListView(
          children: [
            Task('Cursos','https://www.janeisatomas.com.br/wp-content/uploads/2019/05/maskarad-e1558534253279.jpg'),
            Task('Gestão de Tempo','https://img.freepik.com/vetores-premium/icone-de-ampulheta-em-estilo-comico-ilustracao-vetorial-de-desenho-animado-sandglass-em-fundo-branco-isolado-conceito-de-negocio-de-efeito-de-respingo-de-relogio_157943-16849.jpg'),
            Task('Tom de Voz DM','https://th.bing.com/th/id/OIP.tstw7GDuHfcflUjWZxy-tAHaE7?rs=1&pid=ImgDetMain'),
            Task('Word','https://www.softzone.es/app/uploads-softzone.es/2017/09/microsoft-office.jpg'),
            Task('Excel','https://www.softzone.es/app/uploads-softzone.es/2017/09/microsoft-office.jpg'),
            Task('Power Point','https://www.softzone.es/app/uploads-softzone.es/2017/09/microsoft-office.jpg'),
          ],
        ),
      ),
    );
  }
}
