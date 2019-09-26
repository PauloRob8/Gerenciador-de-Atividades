import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Gerenciador de Tarefas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Gerenciador de Tarefas'),
          backgroundColor: Colors.orange,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.event),
              text: 'Tarefas',),
              Tab(icon: Icon(Icons.people),
              text: 'Grupos',),
              Tab(icon: Icon(Icons.person_add),
              text: 'Alunos',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.orange,
                child: Icon(Icons.add),
                onPressed: (){},
              ),
              body: Container(
                child: Center(
                  child: Text('Adicione as atividades aqui',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.orange,
                child: Icon(Icons.person_add),
                onPressed: (){},
              ),
              body: Container(
                child: Center(
                  child: Text('Forme grupos e sorteios de grupos com os alunos aqui',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
            Scaffold(
              body: Container(
                child: Center(
                  child: Text('Lista com os alunos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}
