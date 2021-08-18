void main() {
  
  Pessoa pes = Pessoa("João", altura: 1.70, idade: 20, peso:71);
  //Pessoa pes2 = Pessoa.nascimento("José"); 
  
  print("o nome da pessoa é: ${pes.nome}"); 
  print("a idade de ${pes.nome} é ${pes.peso}"); 
  print("IMC de ${pes.nome} é ${pes.calcIMC()}"); 
}

class Pessoa {
  
  String nome;
  double peso, altura;
  int idade;
  
  Pessoa(this.nome, {this.altura=1.60, this.idade=0, this.peso=0});
  
  /*Pessoa.nascimento(this.nome){
    this.idade = 0; 
  }
  */
  
  double calcIMC({peso}) => peso/(altura*altura); 
  
  //int get idade => idade;
  
}