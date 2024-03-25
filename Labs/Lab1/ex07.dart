/**
 * Give a number n>0, print the first n numbers of the Fibonacci series.
 * Bonus: do it recursively
 */

void main(List<String> args){
  num? n;

  if (args.isEmpty) {
    n = 5; //default value
    print('No args, using default value: ${n}');
  }
  else
    n = num.tryParse(args[0]);

  if (n! < 0){
    n = 5; //default value
    print('No args, using default value: ${n}');
  }


  fibonacci(n);
}

num fibonacci(num n){
  if(n == 0) {
    print(1);
    return 1;
  }
  print(n);
  return n * fibonacci(n-1);
}