import 'package:flutter/material.dart';
import 'receita.dart';
class ReceitaDetalhe extends
StatefulWidget {
  final Receita recipe;
  const ReceitaDetalhe({
  Key? key,
    required this.recipe,
  }) : super(key: key);
  @override
  State<ReceitaDetalhe> createState() {
  return _ReceitaDetalheState();
  
  }
}

class _ReceitaDetalheState extends State<ReceitaDetalhe> {
  //TODO: Add _sliderVal here
  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label), 
        ),
        //2
        body: SafeArea(  
          //3
          child: Column(
            children: <Widget>[
              //4
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image( 
                  image: AssetImage(widget.recipe.imageUrl),
                  ),
          ),
          //5
          const SizedBox(
            height: 4,
          ),
          //6
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 18),

          ), 
            ],
    ),
    ),
    );

        
      }
}