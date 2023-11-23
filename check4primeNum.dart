import 'dart:io';


//Check if the given number is a prime number

main(List<String> args) {
  print("Enter the number: ");
  int flag = 0, num = int.parse(stdin.readLineSync()!);

  if (num == 0 || num == 1) {
    flag = 1;
  }

  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      flag = 1;
      break;
    }
  }
  if (flag == 1) {
    print("$num is not a prime number");
  } else {
    print("$num is a prime number");
  }
}



