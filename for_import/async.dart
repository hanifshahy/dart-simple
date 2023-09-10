void main(){
  print('Hello, World!');
  pr('Byebye, World!');
  pr2('Goodbye, World!');
  print('Hello, World!');
}
Future <void> pr(String msg){
  return Future.delayed(Duration(seconds:1)).then((_){
    print(msg);
  });
}
Future <void> pr2(String msg) async {
  await Future.delayed(Duration(seconds: 1));
  print(msg);
}