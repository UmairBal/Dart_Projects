import 'dart:io';

void main() {
  stdout.writeln("Enter a number: ");
  String? number = stdin.readLineSync();
  num? numbers = num.tryParse(number!);
  for (var i = 1; i <= numbers!; i++) {
    if (i % 3 == 0 && i % 5 == 0)
      stdout.writeln("$i = Fizzbuzz");
    else if (i % 5 == 0)
      stdout.writeln("$i = Buzz");
    else if (i % 3 == 0)
      stdout.writeln("$i = Fizz");
    else
      stdout.writeln(i);
  }
}
