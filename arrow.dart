#!/usr/bin/env dart
// 2018-06-29 EPFL DOJO — https://www.dartlang.org/

void main(List<String> args) {

  // Dart 2: int length = int.tryParse(args[0]) ?? 8;
  var length = int.parse(args[0], onError: (source) => null);
  assert(length is int);

  // Draw the arrow
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
