import 'package:flutter/material.dart';
import 'alistatelas.dart';

class CaixaDeEntrada extends StatefulWidget{

  static final tag = "caixadentrada-mob"; 

  @override
  _CaixaDeEntrada createState() => _CaixaDeEntrada();
}

class _CaixaDeEntrada extends State<CaixaDeEntrada> with SingleTickerProviderStateMixin{
  
  TabController _controller; 

  @override
  void initState(){
      _controller = TabController(lenght: 3,vsync: this);
  }

  @override 
  void dispose(){
    _controller.dispose();
    super.dispose();
  } // deixar de ocupar espaço na memória depois de ser removido

  @override
  Widget build(BuildContext context){

    final content = Column(

      children: <Widget>[
        TabBar(
          controller: _controller, 
          labelColor: Colors. blue,
          tabs: <Widget>[
            Tab(text:"TUDO"),
            Tab(text:"PLANTÕES"),
            Tab(text:"MENSAGENS"),
            Tab(text:"AVISOS"),
            Tab( CircleAvatar
            (backgroundImage: 
            NetworkImage("https://w7.pngwing.com/pngs/905/219/png-transparent-rubbish-bins-waste-paper-baskets-computer-icons-bin-bag-trash-icon-rectangle-waste-symmetry.png"), 
            radius: 20)
            ), // tab com ícone de lixeira
          ], // tabs da parte de cima
        ), // tabbar
      ],
    ); //coluna
    
    Container(
      height = MediaQuery.of(context).size.height - 150,
      child: TabBarView(
        
        controller = _controller,
        
        children:<Widget>[

          Container( // todos
            color: Colors.blue,
            Lista(); 
          ), 

          Container( // plantões
            color: Colors.blue,
            Lista();
          ),

          Container( //mensagens 
            color: Colors.blue,
            Lista();
          ),

          Container( //avisos
            color: Colors.blue,
            Lista(); 
          ),

          Container( // itens apagados
            color: Colors.blue, 
            child: Align(child: Text("ITENS DE APAGADO")) 
          ),

        ],
      ),
      color: Colors.
      height: MediaQuery.of(context).size.height,]
      child: Text(""),
    );

    // esse arquivo será mandado pelo return para o menu. 

  }

}
