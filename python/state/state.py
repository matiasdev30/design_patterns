from abc import ABC, abstractmethod

#Padrão STATE
#Criar estadosde tipo de base a ser reproduzido em um leitor de musica, RAP ou Jazz

class SoundBassTypeState(ABC):

    @abstractmethod
    def play_sound():
        pass
        
class RapBassType(SoundBassTypeState):

    def play_sound():
        print("It's playing in [RAP] bass")

class JazzBassType(SoundBassTypeState):

    def play_sound():
         print("It's playing in [JAZZ] bass")

class MusicPlayer():

    sound_bass_type_state: SoundBassTypeState = None

    def __init__(self, sound_bass_type_state: SoundBassTypeState):
        self.sound_bass_type_state = sound_bass_type_state

    def play(self):
        self.sound_bass_type_state.play_sound()

    def set_base_type(self, sound_bass_type_state: SoundBassTypeState):
        self.sound_bass_type_state = sound_bass_type_state



music_player = MusicPlayer(JazzBassType())

music_player.play()
dc

class A(ABC):
    def __init__(self) -> None:
        pass


class B():
    def __init__(self, a: A) -> None:
        pass

m = B(A())




