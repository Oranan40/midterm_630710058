class Check{
  double cf(var temp){
    double x = 9/5*temp+32;
    print(x);
    return x;
  }
  double ck(var temp){
    double x = temp+273;
    return x;
  }
  double fc(var temp){
    var x = 5/9*(temp-32);
    return x;
  }
  double fk(var temp){
    var x = 5/9*(temp-32)+273;
    return x;
  }
  double kc(var temp){
    var x = temp-273;
    return x;
  }
  double kf(var temp){
    var x = 9/5*(temp-273)+32;
    return x;
  }
}