import 'dart:math';

/**
 * An armstrong number is a number that is the sum of its own digits each raised
 * to the power of the number of digits. For example:
 * 9 is an Armstrong number, because 9 = 9^1 = 9
 * 10 is not an Armstrong number, because 10! = 1^2 + 0^2 = 1
 * 153 is an Armstrong number, because 153 = 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
 * In the main function write some code to determine whether a given number n is
 * an Armstrong number
 */
void main(List<String> args) {
  num? n;

  if (args.isEmpty) {
    n = 5; //default value
    print('No args, using default value: ${n}');
  }
  else
    n = int.tryParse(args[0]);

  if (n! < 0) {
    n = 153; //default value
    print('No args, using default value: ${n}');
  }

  //Count number of digits
  List<String> string_num = n.toString().split('');
  num digit_num = string_num.length;
  num total_val = 0;
  for (int i = 0; i < digit_num; i++){
    total_val += pow(int.tryParse(string_num[i])!, digit_num);
  }

  if(total_val == n)
    print("${n} is an Armstrong number");
  else print("${n} is an not Armstrong number");

}