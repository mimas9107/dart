// players: phone, mp3, pc...

abstract class Players{
  void play();
  void pause();
  void stop();
  void volume();

  void controlPanel(){
    
    print("${this.toString().split(" ")})} player has: play, pause, stop, volume functions");
  }
}

class Phone extends Players{
  @override
  void play(){
    print("phone playing...");
  }
  @override
  void pause() {
    print("phone paused.");
  }
  @override
  void stop() {
    print("phone stop.");
  }
  @override
  void volume() {
    print("phone volume up/down");
  }
}
class Mp3 extends Players{
  @override
  void play() {
    print("Mp3 player is playing...");
  }
  @override
  void pause() {
    // TODO: implement pause
    print("Mp3 player paused");
  }
  @override
  void stop() {
    // TODO: implement stop
    print("Mp3 player stop");
  }
  @override
  void volume() {
    // TODO: implement volume
    print("Mp3 player volume up/down");
  }
}

void main(){

var p1=Phone();
var mp3=Mp3();

p1.play();
p1.controlPanel();
mp3.play();
mp3.controlPanel();
}