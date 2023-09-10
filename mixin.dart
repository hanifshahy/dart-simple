import 'classes.dart';
void main(){
  var pC=PilotCraft('Space X', DateTime(2010,9,14));
  pC.describe();
  pC.describeCrew();
}
mixin Piloted{
  int astr=1;
  void describeCrew(){
    print('Number of astronaunts: $astr.');
  }
}
class PilotCraft extends Spacecraft with Piloted{
  PilotCraft(super.name,super.launchDate);
}