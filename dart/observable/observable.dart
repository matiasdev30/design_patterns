 /**
  * USANDDO O PADRAO OBSERVEBLE
   sistema de notificaçao da chegada do carro*/


//Sujeito observado
abstract class Observable {
  
  void  notify() {
   
  }
}

//Observador
class NotificationService {

  //Criando a lista de observadores
  List<Observable> observers = [];

  void removeObsevable(Observable observable) {
    print("user ${observers.indexOf(observable)} :: removed ❌");
    observers.remove(observable);
  }

  void addObsevable(Observable observable) {
    print("{user $observable} :: registed");
    observers.remove(observable);
  }

  notifyUser() {
    for (Observable obs in observers) {
      obs.notify();
    }
  }

  @override
  String toString(){
    for (Observable obs in observers){
       print("user ${observers.indexOf(obs)} :: registado");
    }
    return "notification-service";
  }
}

class User implements Observable {
  @override
  void notify() {
     print("notify-context");
  }
}


void main(){

  //Lista de user
  User user = User();
  User user1 = User();
  User user2 = User();
  User user3 = User();

  //Registando os users no notification service
  final notficationService = NotificationService();

  //Registando os users no notification service
  for (User x in <User>[user, user1, user2, user3]){
    notficationService.addObsevable(x);
  }

  //remover os users que não serão notificados
  notficationService.removeObsevable(user3);

  //notificar todos os users selecionados 
  notficationService.notifyUser();


}

