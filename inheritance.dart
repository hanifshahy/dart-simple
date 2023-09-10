import 'classes.dart';
void main(){
  Orbiter yeahsat=new Orbiter('Yeahsat',DateTime(2000,2,1), 12.3);
  yeahsat.describe();
}
class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(super.name,super.launchDate,this.altitude);
  @override
  void describe() {
    super.describe();
    print('Altitude= $altitude');
  }
}