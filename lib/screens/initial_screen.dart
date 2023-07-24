import 'package:flutter/material.dart';
import '../data/task_inherited.dart';
import 'form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Center(child: const Text('Tarefas')),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Cada tarefa tem sua dificuldade',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Team: Jamile, Vitória, Diego, Caio')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Cada tarefa tem sua dificuldade',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Equipe'),
                    ),
                    body: const Center(
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Text(
                          'Aprendemos muito no curso de Flutter _o/:Equipe: Jamile, Vitória, Diego, Caio',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.purple,
                              fontStyle: FontStyle.italic,
                              fontFamily: AutofillHints.countryCode),
                        ),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
        padding: const EdgeInsets.only(top: 8, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
