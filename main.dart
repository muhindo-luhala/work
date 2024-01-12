


import 'Etudiant.dart';

void main() {
  print('======QUESTION1=======');
  getStatus('f', 19);
  print('=====QUESTION2========');
  getGreet(6);
  print('======QUESTION 3=======');
  getEquation(3, 8, 3);
  print('=====QUESTION4 ========');
  getMean(3, 7, 6, 3, 3);
  print('======QUESTION 5=======');
  var result = getFacto(6);
  print('le facotriel est : ${result}');
  print('======QUESTION 6=======');
  Etudiant et = new Etudiant();
  et.getdetails();
}

//QUESTION PREMIERE
void getStatus(String status, int age) {
  if (status == 'm' || status == 'M') {
    if (age >= 18) {
      print("Un majeur");
    }
    if (age > 0 && age < 18) {
      print('un mineur');
    }
    if (age < 0) {
      print('age doit etre positif');
    }
  } else if (status == 'F' || status == 'f') {
    if (age >= 18) {
      print("Une majeur");
    }
    if (age > 0 && age < 18) {
      print('une mineur');
    }
    if (age < 0) {
      print('age doit etre positif');
    }
  } else {
    print('verifier les params');
  }
}

//SECOND QUESTION
void getGreet(int n) {
  for (int i = 0; i < n; i += 1) {
    print("bonjour le monde");
  }
}

//Third question
int getEquation(int a, int b, int c) {
  var res = (b * b) - (4 * a * c);
  print("l'equation est : ${res}");
  return res;
}

//fouth question
void getMean(int a, int b, int c, int d, int e) {
  List<int> elements = [a, b, c, d, e];
  int summ = 0;
  for (int i = 0; i < elements.length; i += 1) {
    summ += elements[i];
  }
  double moyenne = summ / elements.length;
  print('la moyenne est : ${moyenne}');
}

//fith question
int getFacto(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else if (n < 0) {
    String error = 'verifier les parametres';
    print(error);
  }
  return n * getFacto(n - 1);
}
