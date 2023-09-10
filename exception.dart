
void main(){
  int? friends;
  try{
    if(friends==null) throw StateError('Unshown Friends');
    else print('SSSS');
  }catch(e){
    print('Error $e Cought!');
  }
}
