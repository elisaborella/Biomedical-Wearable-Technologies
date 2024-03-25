/**
 * Write a function that given a string provided by the main function, converts
 * that string in its acronym. Then print the result in the main function
 */

void main(List<String> args) {
  String arg = "";
  if (args.isEmpty) {
    arg = "Hello World"; //default value
    print('No args, using default value: ${arg}');
  }
  else {
    for (int i = 0; i < args.length; i++){
      arg += args[i];
    }
  }
  print(acronym(arg));
}

String acronym(String string){
  String acronym = "";
  for (int i = 0; i < string.length; i++){
    String char = string[i].toUpperCase();
    if (char == string[i])
      acronym += char;
  }
  return acronym;
}