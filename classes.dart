void main(){
  var voyager1=Spacecraft('Voyager I', DateTime(1997,9,5));
  voyager1.describe();
  print(voyager1.year);
  print('============================');
  var voyager3=Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}
class Spacecraft {
  String name;
  DateTime? launchDate;
  int? get year => launchDate?.year;
  Spacecraft(this.name,this.launchDate);
  Spacecraft.unlaunched(String name):this (name,null);
  void describe(){
    print(name);
    var launchDate=this.launchDate;
    if (launchDate!=null) {
      int years=DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launch date: $launchDate ($years years ago.)');
    }else print('Unlaunched');
  }
}