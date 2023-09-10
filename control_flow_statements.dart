import 'dart:io';
void main(){
  String? s=stdin.readLineSync();
  int d=0;
  if(s != null){
    d=int.parse(s);
    print(s);
  }
  while(d>0){
    d--;
    print(d);
  }
}