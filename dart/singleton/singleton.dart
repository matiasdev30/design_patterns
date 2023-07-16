/**
 * USANDO DO PADRÃO SINGETON
 * Aplicativos de resgisto de user, queremos apenas uma instacia da classe responsavel por registar os users no sistema */

class UserRegisterSingleton{

  //Lista de user do sistema
  List<String> userList = [];

  //Variavel onde alocareos a instacia
  static UserRegisterSingleton? _userRegisterSingleton;

  //Construtor privado para não poder construir a classe mais de uma vez
  UserRegisterSingleton._();

  //Metodo que ira retornar a instacia do UserResgisterSingleton caso ja esteja criada, caso nao a cria e a retorna
  static UserRegisterSingleton getInstance(){

    _userRegisterSingleton = _userRegisterSingleton == null ? UserRegisterSingleton._() : _userRegisterSingleton;

    return _userRegisterSingleton!;

  }

  void registerUser(String username){
    userList.add(username);
    print("User adicionado com sucesso ✔️");
  }

  void listUsers(){
    int c = 0;
    for(String x in userList){
      print("$c : $x");
      c ++;
    }
  }

}


void main(){

  //Contruindo o nosso objecto UserRegisterSingleton
  UserRegisterSingleton userRegister = UserRegisterSingleton.getInstance();

  //Registando users
  userRegister.registerUser("Mvni");
  userRegister.registerUser("Matias");
  userRegister.registerUser("Manilson");
  userRegister.registerUser("Mvni Null");

  //Recuperando a instancia já criada em um outro objecto
  UserRegisterSingleton userRegister2 = UserRegisterSingleton.getInstance();

  print("\nListando os users por um outro objecto\nque recuerou a instancia do UserRegister: \n");
  userRegister2.listUsers();

  print(userRegister == userRegister2);   

}

