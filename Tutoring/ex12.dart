// Write a program (function) that takes a list and returns a new list that contains
// all the elements of the first list minus all the duplicates.
void main(List<String> args){
  // list of numbers with duplicates
  List<int> input = [1, 4, 1, 2, 3, 1, 2, 4, 6, 7];
  print(removeDuplicates(input));
  // it works the same with strings
  List<String> inputstr = ['a', 'b', 'a'];
  print(removeDuplicates(inputstr));
}

String removeDuplicates(List list){
  Map<Object, int> dupl = {};
  list.forEach((element){
    if (dupl.isEmpty || !dupl.containsKey(element))
      dupl[element] = 1;
    else dupl.remove(element);
  });
  return dupl.keys.toString();
}