/* Write a function with an optional named parameter up that, for a given string,
provided by the main function, make it upper case if up is true, lower case otherwise
By default, up is false. Then print the result in the main function
*/

void main(List<String> args) {
  String? string;
  bool? upper;

  if (args.isEmpty) {
    upper = false; //default value
    string = "Ciao";
    print('No args, using default value: ${upper}, ${string}');
  }
  else {
    upper = bool.tryParse(args[1]);
    string = args[0];
  }

  print(upperLower(string, upper!));
}

String upperLower(String string, bool up){
  if (up)
    return string.toUpperCase();
  return string.toLowerCase();
}