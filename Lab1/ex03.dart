/* Write a function that given a string, provided by the main function, returns the same
* text with swapped cases. Then print the result in the main function
*/

void main(List<String> args) {
  String? n;

  if (args.isEmpty) {
    n = "Ciao"; //default value
    print('No args, using default value: ${n}');
  }
  else
    n = args[0];

  print(inverter(n));
}

String inverter(String string_to_invert){
  List<String> n_splitted = string_to_invert.split('');

  List<String> n_inverted = n_splitted.reversed.toList();

  String inverted_string = n_inverted.join('');

  return inverted_string;
}