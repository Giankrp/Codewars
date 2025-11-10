void main() {
  
}

int quarter(int month) {
  if(month < 0){
    return 1;
  }


  if (month >= 1 && month < 4) {
    return 1;
  }else if(month <= 6){
    return 2;
  }else if(month <= 9){
    return 3;
  }

  return 4;
}