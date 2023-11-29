import 'dart:io';

main() {
  String? str = stdin.readLineSync();
  var reversed = reverseString(str);
  stdout.writeln("Sentence to reverse: $str");
  stdout.writeln("Reversed: $reversed");
}

String? reverseString(String? sentence) {
  if (sentence != null) {
    var length = sentence.length;
    String reversed = "";
    for (var i = length - 1; i >= 0; i--) {
      reversed += sentence[i];
    }
    return reversed;
  } else {
    stdout.writeln("This can't be null!");
  }
  return null;
}
