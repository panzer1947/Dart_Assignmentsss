import 'dart:io';

void main() {
//Bonus Question Class:Check wether the no is prime number or not
  stdout.write("Enter the prime no to check");
  String? nostr = stdin.readLineSync();
  int no = int.parse(nostr!);
  int pr = 0;

  for (int i = 2; i < no; i++) {
    if (no % i == 0) {
      pr = pr + 1;
    }
  }

  if (pr > 0) {
    print("no is not prime");
  } else {
    print("no is  prime");
  }

//Question#1 Take test scpre as input from the user & display his grade according to the following criteria
  stdout.write('Enter your test score');
  String? marksinStr = stdin.readLineSync();
  int? marks = int.tryParse(marksinStr!);
  if (marks == null) {
    print('Enter marks in Digits plzz');
  } else if (marks >= 90 && marks <= 100) {
    print("your grade is A");
  } else if (marks >= 80 && marks <= 89) {
    print("your grade is B");
  } else if (marks >= 70 && marks <= 79) {
    print("your grade is C");
  } else if (marks >= 60 && marks <= 69) {
    print("your grade is D");
  } else if (marks >= 0 && marks <= 59) {
    print("your grade is F");
  } else {
    print("Invalid marks");
  }

  //Question#2:Calculate the electricity bill?The rate of electrcity are <=300 then 2 per unit,
  //greater then 300 but less then 500 then 5 per unit & if exceeds 500 then rs 7 per unit?

  stdout.write('Enter the units of electricty consumed');
  String? electinStr = stdin.readLineSync();
  int? electunit = int.tryParse(electinStr!);
  int electbill = 1;

  if (electunit == null) {
    print('Enter units consumed in Digits plzz');
  } else if (electunit > 500) {
    electbill = electunit * 7;
    print(electbill);
  } else if (electunit > 300 && electunit <= 500) {
    electbill = electunit * 5;
    print(electbill);
  } else {
    electbill = electunit * 2;
    print(electbill);
  }

  //Question#3:Take input from user,Calculate area of circle if user enter 1 & circumference of circle if user enters 2
  stdout.write('Enter the radius');
  String? RadiusinStr = stdin.readLineSync();
  double? Radius = double.tryParse(RadiusinStr!);

  if (Radius == null) {
    print('Enter radius in Digits plzz');
  } else {
    stdout.write('Enter the choice');
    String? choiceinStr = stdin.readLineSync();
    int? choice = int.tryParse(choiceinStr!);

    if (choice == 1) {
      double area = Radius * Radius * 3.141;
      print(area);
    } else if (choice == 2) {
      double CIRCUMFERNCE = Radius * 2 * 3.141;
      print(CIRCUMFERNCE);
    } else {
      print('Invalid chocie');
    }
  }

  //Question#4:Take input as salary if salary is above 20000 deduct 7% of salary,
  //if salary is 10000 & less then 20000 deduct 1000 from salary,if less then 10000 deduct nothing
  stdout.write('Enter Your salary');
  String? SalaryinStr = stdin.readLineSync();
  int? Salary = int.tryParse(SalaryinStr!);
  int netsalary = 0;
  if (Salary == null) {
    print('Enter salary in Digits plzz');
  } else if (Salary >= 20000) {
    netsalary = (Salary - (Salary * 7 / 100)).toInt();
    print(netsalary);
  } else if (Salary >= 10000 && Salary < 20000) {
    netsalary = Salary - 1000;
    print(netsalary);
  } else {
    netsalary = (Salary);
    print(netsalary);
  }

  //Question#5:Input three number & display smallest using nested if

  stdout.write('Enter Your first value');
  String? value1inStr = stdin.readLineSync();
  int? value1 = int.parse(value1inStr!);
  stdout.write('Enter Your second value');
  String? value2inStr = stdin.readLineSync();
  int? value2 = int.parse(value2inStr!);
  stdout.write('Enter Your third value');
  String? value3inStr = stdin.readLineSync();
  int? value3 = int.parse(value3inStr!);

  if (value1 < value2) {
    if (value1 < value3) {
      print("${value1} is smallest number");
    } else {
      print("${value3} is smallest number");
    }
  } else {
    if (value2 < value3) {
      print("${value2} is smallest number");
    } else {
      print("${value3} is smallest number");
    }
  }

  //Question#6:Take 3 input and check if they are equal or different
  stdout.write('Enter Your first value');
  String? firstinStr = stdin.readLineSync();
  int? first = int.parse(firstinStr!);
  stdout.write('Enter Your second value');
  String? secondinStr = stdin.readLineSync();
  int? second = int.parse(secondinStr!);
  stdout.write('Enter Your third value');
  String? thirdinStr = stdin.readLineSync();
  int? third = int.parse(thirdinStr!);

  if (first == second) {
    if (first == third) {
      print("All values are equal");
    } else {
      print("values are not equal");
    }
  } else {
    print("values are not equal");
  }

  //Question#7 take 3 input and display max number using logcial operator
  stdout.write('Enter Your first value');
  String? max1inStr = stdin.readLineSync();
  int? max1 = int.parse(max1inStr!);
  stdout.write('Enter Your second value');
  String? max2inStr = stdin.readLineSync();
  int? max2 = int.parse(max2inStr!);
  stdout.write('Enter Your third value');
  String? max3inStr = stdin.readLineSync();
  int? max3 = int.parse(max3inStr!);
  if (max1 > max2 && max1 > max3) {
    print('Maxiumum value is ${max1}');
  } else if (max2 > max1 && max2 > max3) {
    print('Maxiumum value is ${max2}');
  } else {
    print('Maxiumum value is ${max3}');
  }

  //Question#8 take a character input and check if it vowel or not
  stdout.write('Enter the character to check if its vowel or not');
  String? chkinstrr = stdin.readLineSync();
  if (chkinstrr == 'A' ||
      chkinstrr == 'a' ||
      chkinstrr == 'E' ||
      chkinstrr == 'e' ||
      chkinstrr == 'I' ||
      chkinstrr == 'i' ||
      chkinstrr == 'O' ||
      chkinstrr == 'o' ||
      chkinstrr == 'U' ||
      chkinstrr == 'u') {
    print("its a vowel");
  } else {
    print('Its not a vowel');
  }

  //Question#9:Take any keyboard character from user as an input and tell if its capital letter,small letter,no or symbol

  stdout.write('Enter the character to check\n');
  String? checksCh = stdin.readLineSync();
  String Checked = (checksCh!);
  if (Checked.contains(new RegExp(r'[a-z]'))) {
    print('it is a small letter');
  } else if (Checked.contains(new RegExp(r'[A-Z]'))) {
    print('it is a Capital letter');
  } else if (Checked.contains(new RegExp(r'[0-9]'))) {
    print('These are digits');
  } else {
    print('its a symbol');
  }

  //Question#10:Take a number from user as input and tell if its even or not

  stdout.write('Enter the number to check if its odd or even');
  String? evenoddinStr = stdin.readLineSync();
  int evenodd = int.parse(evenoddinStr!);
  if (evenodd % 2 == 0) {
    print('Its an even Number');
  } else {
    print('Its an odd object');
  }
}
