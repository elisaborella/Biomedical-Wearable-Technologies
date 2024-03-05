/* Given an integer, n, perform the following conditional actions:
* If n is odd, print 'Odd'
* if n is even and in the inclusive range of 2 to 5 print 'Small even'
* if n is even and in the inclusive range of 6 to 20 print 'Medium even'
* if n is even and greater than 20 print 'Big even'
*/

void main(List<String> args) {
  num? n;

  if (args.isEmpty) {
    n = 5; //default value
    print('No args, using default value: ${n}');
  }
  else
    n = num.tryParse(args[0]);

  if (n! % 2 != 0) {
    print("${n} is Odd");
  } else {
    if (n >= 2 && n < 5) {
      print("${n} is small even");
    } else if (n >= 6 && n < 20) {
      print("${n} is medium even");
    } else {
      print("${n} is big even");
    }
  }
}