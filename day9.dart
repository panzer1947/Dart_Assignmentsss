import 'dart:io';

void main() {
  //Question:1 Take a number of weekday as input from user and display name of the day

  stdout.write('Enter the number of weekday');
  String? NumberinStr = stdin.readLineSync();
  int? Number = int.tryParse(NumberinStr!);
  if (Number == null) {
    print('Please enter numbers');
  }

  switch (Number) {
    case 10:
      print("Friday");
      break;
    case 20:
      print("Saturday");
      break;
    case 30:
      print("Sunday");
      break;
    case 40:
      print("Monday");
      break;
    case 50:
      print("Tuesday");
      break;
    case 60:
      print("Wednesday");
      break;
    case 70:
      print("Thursday");
      break;
    default:
      print('Invalid number');
  }

  //Question#2:Take the 3 input from user the 2 values and operator and do the required mathematical operation with them

  var result;

  stdout.write("Enter the first value");
  String? firstvalInstr = stdin.readLineSync();
  double? firstval = double.tryParse(firstvalInstr!);

  stdout.write('Enter the second value');
  String? secondvalinstr = stdin.readLineSync();
  double? secondval = double.tryParse(secondvalinstr!);

  if (firstval == null || secondval == null) {
    print('The values are not in numbers');
    return;
  } else {
    stdout.write("Enter the operator");
    String? operation = stdin.readLineSync();

    switch (operation) {
      case '+':
        {
          result = firstval + secondval;
          print(result);
          break;
        }
      case '-':
        {
          result = firstval - secondval;
          print(result);
          break;
        }
      case '*':
        {
          result = firstval * secondval;
          print(result);
          break;
        }
      case '/':
        {
          if (secondval != 0) {
            result = firstval / secondval;
            print(result);
            break;
          } else {
            print('second value should not be 0');
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

  //Question#3 :Take the character as input amd display whetehr its vowel or not

  stdout.write('Enter the alphabet to check if its vowel or not');
  String? Vowwel = stdin.readLineSync();
  switch (Vowwel) {
    case 'a':
    case 'A':
      {
        print('its a vowel');
        break;
      }
    case 'e':
    case 'E':
      {
        print('its a vowel');
        break;
      }
    case 'i':
    case 'I':
      {
        print('its a vowel');
        break;
      }
    case 'o':
    case 'O':
      {
        print('its a vowel');
        break;
      }
    case 'u':
    case 'U':
      {
        print('its a vowel');
        break;
      }
    default:
      {
        print('its not a vowel');
        break;
      }
  }

  //Question#4 Input choice and no of months from user and display the total charges

  stdout.write("Hi welcome to the PapaJohns club \n");
  stdout.write("Press 1: For Standard Adult Memebership \n");
  stdout.write("Press 2: For Child Memebership \n");
  stdout.write("Press 3: For Senior Citizen Memebership \n");
  stdout.write("Press 4: To Quit the program \n");

  String? choiceinStr = stdin.readLineSync();
  int choice = int.parse(choiceinStr!);
  if (choice >= 1 && choice < 4) {
    stdout.write("enter the months");
    String? monthsinStr = stdin.readLineSync();
    int months = int.parse(monthsinStr!);
    var charges;

    switch (choice) {
      case 1:
        {
          charges = months * 50;
          print(charges);
          break;
        }
      case 2:
        {
          charges = months * 20;
          print(charges);
          break;
        }
      case 3:
        {
          charges = months * 30;
          print(charges);
          break;
        }
    }
  } else if (choice != 4) {
    print('enter the valid number');
    return;
  } else {
    print('You quit the program');
    return;
  }

  //Question#5 Take a choice from input to convert from asci to character or character into ascii code and display result

  stdout.write("Press 1:Convert ASCII value into Character \n");
  stdout.write("Press 2: Convert Character into ASCII value \n");
  stdout.write("Enter your choice \n");

  String? optioninStr = stdin.readLineSync();
  int option = int.parse(optioninStr!);

  switch (option) {
    case 1:
      {
        stdout.write('Enter the Value u want to be converted into Character');
        String? valinStr = stdin.readLineSync();
        int val = int.parse(valinStr!);
        print('The value in character is ' + String.fromCharCode(val));
        break;
      }
    case 2:
      {
        stdout.write('Enter the character u want to be converted into Value');
        String? letterinStr = stdin.readLineSync();
        String letter = (letterinStr!);
        print('The converted value is ${letter.codeUnitAt(0)}');
        break;
      }
    default:
      {
        print('Invalid option');
        break;
      }
  }
}
