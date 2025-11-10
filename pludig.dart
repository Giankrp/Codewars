void main() {
  print(digitalRoot(99));
}

int digitalRoot(int n) {
    var pa = n.toString().split("");
    var melo = 0;
  if(n < 0){
    return 0;
  }

  for (var a in pa) {
    print(a);
    melo += int.parse(a);
  }
  if(n.toString().length > 1){
   melo =  digitalRoot(melo);
  }
  print(melo);
  return melo;
}