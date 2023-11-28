import 'dart:io';

//Display prime number from the first prime number to the given number
void main(List<String> args) {
  print("Enter the number: ");
  int number = int.parse(stdin.readLineSync()!), flag = 0, i;

  print(" ");
  for (int a = 2; a <= number; ++a) {
    flag = 0;

    for (i = 2; 2 * i <= a; ++i) {
      if (a % i == 0) {
        flag = 1;
        break;
      }
    }
    if (flag == 0 && a % 2 != 0) {
      print("$a is an Odd and a Prime number");
    } else if (flag == 0 && a % 2 == 0) {
      print("$a is an Even and a Prime number");
    } else if (flag == 1 && a % 2 == 0) {
      print("$a is an Even number");
    } else if (flag == 1 && a % 2 != 0) {
      print("$a is an Odd number");
    } else {
      print("$a is a Prime number");
    }
  }
}
