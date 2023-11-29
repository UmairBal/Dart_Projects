import 'dart:io';

void main() {
  stdout.writeln("Write a sentence to check: ");
  String? sentenceToCheck = stdin.readLineSync();
  String? reverseSentence = reverseString(sentenceToCheck);
  if (isPalindrome(sentenceToCheck) == true) {
    stdout.writeln("$sentenceToCheck = $reverseSentence");
    stdout.writeln("so it is palindrome");
  } else {
    stdout.writeln("$sentenceToCheck != $reverseSentence");
    stdout.writeln("Sentence is not a palindrome");
  }
}

String? reverseString(String? sentence) {
  String reversedSentence = "";
  if (sentence != null) {
    var lengthOfSentence = sentence.length;
    for (var i = lengthOfSentence - 1; i >= 0; i--) {
      reversedSentence += sentence[i];
    }
    return reversedSentence;
  } else
    stdout.writeln("Sentence is null");
}

bool? isPalindrome(String? sentence) {
  String? reverseSentence = reverseString(sentence);
  if (reverseSentence == sentence)
    return true;
  else
    return false;
}
