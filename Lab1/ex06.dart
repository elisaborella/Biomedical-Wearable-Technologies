/**
 * Write a function that given a string provided by the main function, returns a boolean
 * that if the string is palindrome. Then print the result in the main function
 */

void main (List<String> args){
  String? n;

  if (args.isEmpty) {
    n = "Ciao"; //default value
    print('No args, using default value: ${n}');
  }
  else
    n = args[0];

  if (palindrome(n))
    print("String is palindrome");
  else print("String is not palindrome");
}

bool palindrome(String string) {
  int length = string.length;

  for (int i = 0; i < length / 2; i++) {
    if (string[i] != string[length - i - 1]) {
      return false;
    }
  }

  return true;
}
