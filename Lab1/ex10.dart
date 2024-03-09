/**
 * Write a function that given a string provided by the main function, containing
 * brackets[], braces{}, parentheses(), or any combination thereof that follows the
 * math expression rules, return a boolean that is true if any and all pairs are matched
 * and nested correctly. Suppose that the only one pair of parentheses can be present
 * for each type. Then print the result in the main function. For example:
 * This is ok: {This[is(o)]}k
 * This is not ok: T{hi[(sis)not}]ok
 * This is not ok: {{thi[is(notok)]}}
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

  print("${brackets_checker(arg)? "This is ok:": "This is not ok:"} ${arg}");
}

bool brackets_checker(String string){
  Map<String, String> type_of_parentheses = {
    "{": "}",
    "[": "]",
    "(": ")"
  };
  List<String> seq_parentheses = [];
  List<String> seq_parentheses_opened = [];
  List<String> seq_parentheses_closed = [];
  List<String> string_listed = string.split('');

  for (int i = 0; i < string_listed.length; i++){
        if (type_of_parentheses.containsKey(string[i])) {
          seq_parentheses_opened.add(string[i]);
          seq_parentheses.add(string[i]);
        } else if (type_of_parentheses.containsValue(string[i])) {
          seq_parentheses_closed.add(string[i]);
          seq_parentheses.add(string[i]);
        }
  }

  if (seq_parentheses.length < 0 || seq_parentheses_closed.length != seq_parentheses_opened.length)
    return false;

  for (int i = 0; i < seq_parentheses_closed.length; i++)
    if (seq_parentheses_closed[i] != type_of_parentheses[seq_parentheses_opened[seq_parentheses_closed.length - 1 - i]])
      return false;

  bool open_braces = false;
  bool open_brackets = false;
  bool open_parent = false;
  for (int i = 0; i < seq_parentheses.length; i++){
      switch (seq_parentheses[i]) {
        case "{":
          if (!open_braces)
            open_braces = true;
          else return false;
          break;
        case "[":
          if (!open_brackets)
            open_brackets = true;
          else return false;
          break;
        case "(":
          if (!open_parent)
            open_parent = true;
          else return false;
          break;
        case "}":
          if (open_braces)
            open_braces = false;
          else return false;
          break;
        case "]":
          if (open_brackets)
            open_brackets = false;
          else return false;
          break;
        case ")":
          if (open_parent)
            open_parent = false;
          else return false;
          break;
      }
  }

  return true;
}