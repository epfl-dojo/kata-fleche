void main() {
  var length = 10;
  print(tip(length));
  head(length);
  for (final t in tail(length)) {
    print(t);
  }
}

string tip(length) {
  return " " * length + "*";
}

string head(length) {
  for (var i = 1; i < length; i++) {
    print(" " * (length-i) + '*' + " " * (2*i-1) + '*') ;
  }
  print('* ' * length + '*');
}


List tail(length) {
  var list = new List(length);
  for(var i = 0; i < length; i++) {
    list[i] = tip(length);
  }
  return list;
}
