// You've designed a way to send a set of commands to a character using a single number.
// The code so that you send a number between 1 and 31,
// and the character turns it into a series of actions.
// Your task is to build the converter from a number between 1 and 31 to a sequence of actions.
// The sequence of actions is chosen by looking at the rightmost five digits of the number once it's been converted to binary.
// Start at the right-most digit and move left.
// The actions for each number place are:
// 00001 = wink
// 00010 = double blink
// 00100 = close your eyes
// 01000 = jump
// 10000 = Reverse the order of the operations in the command.

void main(List<String> args){
  int? n;

  if (args.isEmpty) {
    n = 29; //default value
    print('No args, using default value: ${n}');
  }
  else
    n = int.tryParse(args[0]);

  if (n! < 1 && n > 31) {
    n = 29; //default value
    print('No args, using default value: ${n}');
  }

  print(convertToCommand(n));
}

Map<int, String> commands = {
  1: 'wink',
  2: 'double blink',
  3: 'close your eyes',
  4: 'jump',
  5: 'reverse'
};

String convertToCommand(int code){
  // Converti la stringa binaria in una lista di interi
  List<int> command_bin = code.toRadixString(2).split('').map((e) => int.parse(e)).toList();
  List<int> command_indexed = [];
  List<String> command_list = [];
  int index = command_bin.length;

  command_bin.forEach((element) {
    if (element == 1){
      command_indexed.add(index);
    }
    index--;
  });

  bool reverse = false;

  command_indexed.reversed.forEach((element) {
    command_list.add(commands[element]!);
    if (element == 5) {
      reverse = true;
      command_list.removeLast();
    }
  });

  return reverse ? command_list.reversed.toString() : command_list.toString();
}