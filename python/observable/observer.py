from abc import ABC, abstractmethod

class Observable(ABC):

    @abstractmethod
    def notify():
        pass

class NotificationService(Observable):
    
    observers: list() = None

    def __init__(self):
        self.observers = []

    def remove_observer(self, obs: Observable):
        self.observers.remove(obs)

    def notify(self):
        for x in self.observers:
            x.notify()

    def __str__(self):
        for x in self.observers:
            print("user :: {} resgistado".format(self.observers.index(x)))
        return "notification-service"

class User(Observable):
    def notify(fn):
        fn if fn != None else None 
        print("user registado")


user1 = User()
user2 = User()
user3 = User()
user4 = User()

notificationService  = NotificationService()

notificationService.observers = [user1, user2, user3, user4]

notificationService.remove_observer(user3)

print(notificationService)

notificationService.notify()

