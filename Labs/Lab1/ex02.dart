import 'dart:math';
/*In the main function, given an integer number n instantiate a list of n random integers
* with possible maximum value 10. Then, for each element of the list, print it multiplied by 2
*/

void main(List<String> args) {
  Random random = Random();
  num? n;

  if (args.isEmpty) {
    print('No args');
    n = 5; //default value
  }
  else
    n = num.tryParse(args[0]);

  List<int> list = []; //Dichiaro la lista
  for (int i = 0; i < n!; i++)
    list.add(random.nextInt(10));

  for (int i = 0; i < list.length; i++)
    print(list[i] * 2);
}