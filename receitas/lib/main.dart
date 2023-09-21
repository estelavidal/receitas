import 'package:flutter/material.dart';
import 'receita.dart';

void main() {
  runApp(const ReceitaApp());
}

class ReceitaApp extends StatelessWidget {
  const ReceitaApp({super.key});

  // This widget is the root of your application.
  //1
  @override
  Widget build(BuildContext context) {
    //2
    final ThemeData theme = ThemeData();
    //3
    return MaterialApp(
      //4
      title: 'Receitas',
      //5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.black,
        )
        ),
        //6
        home: const MyHomePage(title: 'Receitas'),
      );

}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
    //1
    return Scaffold(
    //2
    appBar: AppBar(
    title: Text(widget.title),
    ),
    //3
    body: SafeArea(
      //4
      child: ListView.builder(
//5
        itemCount: Receita.samples.length,
//6
        itemBuilder: (BuildContext context, int index) {
  //7
      return GestureDetector(
          //8
        onTap: () {
            //9
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) {
//10

      return const Text('Detalhe da Página');
              
  },
  ),
  );
  },
  //11
  child: buildRecipeCard(Receita.samples[index]),

    );
        },
        ),
    ),
    );
}
  
  
  Widget buildRecipeCard(Receita receita){
    //1
    return Card(
      //2
      child: Column (
        //3
        children: <Widget>[
          //4
          Image(image: AssetImage(receita.imageUrl)),
          //5
          Text(receita.label),
        ],
       ),
    );
}
}