from enum import Enum

class Theme(Enum):
    Dark = "dark-mode"
    Light = "ligth-mode"

class AppThemeSingleton:

    theme: Theme = Theme.Dark
    _instance = None
    sound: bool =  False
    
    def change_settings(self, sound: bool, theme: Theme):
        self.sound = sound if sound is not None else self.sound
        self.theme = theme if theme is not None else self.theme

    @staticmethod
    def get_instance():
        if AppThemeSingleton._instance is None:
            AppThemeSingleton._instance = AppThemeSingleton()
        return AppThemeSingleton._instance
    
    
    def __str__(self) -> str:
        return "sound: {} theme: {}".format(self.sound, self.theme)
    

#Criando o primeiro objecto AppThemeSingeton e sua unica instacia
appThemeSingleton = AppThemeSingleton.get_instance()

print("object 1 [{}]".format(appThemeSingleton))

#Criando o primeiro objecto AppThemeSingeton e sua unica instacia
appThemeSingleton2 = AppThemeSingleton.get_instance()

print("object 2 [{}]".format(appThemeSingleton2))

appThemeSingleton2.change_settings(sound= True, theme= Theme.Light)

print("object == object 2 : {}".format(appThemeSingleton == appThemeSingleton2))

print("object 2 [{}]".format(appThemeSingleton2))


