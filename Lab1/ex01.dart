import 'dart:math';
//In the main function, given a number n, for all non-negative integers i < n, print i^4.
// Do it using a for loop and a while loop

void main(List<String> args) {
  num? n;
  if (args.isEmpty) {
    print('No args');
    n = 5; //default value
  }
  else
    n = num.tryParse(args[0]);

  if(args.runtimeType != "String") {
    print("-------------------------------------------FOR LOOP");
    for (num i = 0; i < n!; i++) {
      print(pow(i,4));
    }

    print("----------------------------------------WHILE LOOP");
    num i = 0;
    while (i < n) {
      print(pow(i, 4));
      i++;
    }
  }
}