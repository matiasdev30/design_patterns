 /**
  * USANDDO O PADRAO OBSERVEBLE
   sistema de notificaçao da chegada do carro*/

abstract class Observable {
  void notify(Function() callback) {
    callback();
  }
}

class NotificationService {
  List<Observable> observers = [];

  void removeObsevable(Observable observable) {
    print("user ${observers.indexOf(observable)} :: removed ❌");
    observers.remove(observable);
  }

  notifyUser() {
    for (Observable obs in observers) {
      obs.notify(() {
        print("O carro esta disponivel, assento ${observers.indexOf(obs)}");
      });
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
  void notify(Function callback) {
    callback();
  }
}


void main(){

  //Lista de user
  User user = User();
  User user1 = User();
  User user2 = User();
  User user3 = User();

  //Registando os users no notification service
  final notficationService = NotificationService()..observers.addAll(<User>[user, user1, user2, user3]);

  //fazer um print do notificaton service para mostrar a lista de users registado
  print(notficationService);

  //remover os users que não serão notificados
  notficationService.removeObsevable(user3);

  //notificar todos os users selecionados 
  notficationService.notifyUser();


}

