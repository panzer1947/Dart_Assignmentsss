import 'dart:io';

void main() {
  var result;
  stdout.write('Enter first value');
  String? firstvalueinstr = stdin.readLineSync();
  int? firstvalue = int.tryParse(firstvalueinstr!);
  stdout.write('Enter second value');
  String? secondvalueinstr = stdin.readLineSync();
  int? secondvalue = int.tryParse(secondvalueinstr!);
  stdout.write('Enter the oeprator');
  String? operator = stdin.readLineSync();
  if (firstvalue == null || secondvalue == null) {
    print("invaid number");
  } else {
    switch (operator) {
      case '+':
        {
          result = firstvalue + secondvalue;
          print(result);
          break;
        }

      case '-':
        {
          result = firstvalue - secondvalue;
          print(result);
          break;
        }
      case '*':
        {
          result = firstvalue * secondvalue;
          print(result);
          break;
        }
      case '/':
        {
          if (secondvalue != 0) {
            result = (firstvalue / secondvalue).toInt();
            print(result);
            break;
          } else {
            print('Enter other value then 0');
            break;
          }
        }

      default:
        {
          print('invalid operator');
          break;
        }
    }
  }

  int x = -1;
  int? maybe;
  if (x > 0) {
    maybe = x;
  }
  int value = maybe ?? 0;
  print(value);
}
