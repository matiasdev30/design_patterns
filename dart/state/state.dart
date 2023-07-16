/**
 * USANDO O PADRÃO DE PROJECTO STATE
 * Definindo a saida do som em reprodutores de musica, com diferetes estados de estilo
 */

abstract class SoundBassTypeState {
  void soundPlay() {}
}

class RockBaseType implements SoundBassTypeState {
  @override
  void soundPlay() {
    print("Playing [Rock] base type");
  }
}

class JazBaseType implements SoundBassTypeState {
  @override
  void soundPlay() {
    print("Playing [Jazz] base type");
  }
}

class RapBaseType implements SoundBassTypeState {
  @override
  void soundPlay() {
    print("Playing [Rap] base type");
  }
}

class EletronicBaseType implements SoundBassTypeState {
  @override
  void soundPlay() {
    print("Playing [Eletronic] base type");
  }
}

class MusicPlayer {
  SoundBassTypeState soundBassTypeState;

  MusicPlayer(this.soundBassTypeState);

  playSound(){
    this.soundBassTypeState.soundPlay();
  }

  setBasetype(SoundBassTypeState soundBassTypeState){
    this.soundBassTypeState = soundBassTypeState;
  }
}

void main(){

  //Criando o music player e definindo os estados 
  MusicPlayer musicPlayer = MusicPlayer(JazBaseType());
  musicPlayer.playSound();
  //Trocando de estildo de base
  musicPlayer.setBasetype(RapBaseType());
  musicPlayer.playSound();
  
}
