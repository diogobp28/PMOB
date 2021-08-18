import 'package:flutter/atelapmob.dart';

class _CaixaDeEntrada extends State<CaixaDeEntrada>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),

    body: buildBody(), //conteúdo do body
    ); // scaffold do return
  }

  buildAppBar(){
    return AppBar();
  }
  
  buildBody(){ // corpo do texto
    return ListView(
      children: [
        buildListStile(
          urlImagem:"",
          tipoMensagem:"", 
          msg:"", 
          data:"");
        
        buildListStile(
          urlImagem:"",
          tipoMensagem:"", 
          msg:"", 
          data:"");

        buildListStile(
          urlImagem:"",
          tipoMensagem:"", 
          msg:"", 
          data:"");
      ],
    );
  }

  buildListStyle(
      {String urlImagem: 'https://image.flaticon.com/icons/png/512/1665/1665731.png'}
      String tipoMensagem, 
      String msg, 
      String data)
    {
      return ListTile(
          
          //leading: Icon(Icons.account_circle_rounde, size:40),

          leading: CircleAvatar(backgroundImage: NetworkImage(urlImagem), radius: 20),
          
          title: 
          Text(
            tipoMensagem, 
            style: TextStyle(
              fontWeight.bold, 
              font size:16)
            ),
          
          subtitle: Text(msg),
          
          trailing: 
            Text(data, 
            style: 
              TextStyle(color: Colors.blue)), 
      ); // listas
    }
}
