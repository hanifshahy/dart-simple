
import 'classes.dart';
void main(){
  Car benz=new Car('Mercedes Benz',0);
  benz.keloMeter();
  benz.speedUp(30);
  benz.keloMeter();
  benz.speedUp(100);
  benz.keloMeter();
  benz.applyBreak();
  benz.keloMeter();
}

class MockSpaceship implements Spacecraft{
  @override
  DateTime? launchDate;

  @override
  late String name;

  @override
  void describe() {
    
  }

  @override
  
  int? get year => throw UnimplementedError();
  
}
abstract class Vehicle{
  String name;
  int tire;
  int speed=0;
  void speedUp(int s){
    this.speed += s;
  }
  void applyBreak(){
    this.speed=0;
  }
  void keloMeter();
  Vehicle(this.name,this.tire);
}
class Car extends Vehicle{
  Car(String s,int i) : super(s, i);
  @override
  void keloMeter() {
    print('Speed: $speed');
  }
}