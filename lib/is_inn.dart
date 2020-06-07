library is_inn;

bool isInn(dynamic value) {
  String inn = value.toString();
  final innReg12 = RegExp(r'^\d{12}$');
  final innReg10 = RegExp(r'^\d{10}$');
  if (!innReg12.hasMatch(inn) && !innReg10.hasMatch(inn)) {
    return false;
  }
  final numbers = inn.split('').map((char) => int.parse(char)).toList();
  //для ИНН в 10 знаков
  if ((numbers.length == 10) &&
      (numbers[9] ==
          ((2 * numbers[0] +
                      4 * numbers[1] +
                      10 * numbers[2] +
                      3 * numbers[3] +
                      5 * numbers[4] +
                      9 * numbers[5] +
                      4 * numbers[6] +
                      6 * numbers[7] +
                      8 * numbers[8]) %
                  11) %
              10)) {
    return true;
  }
  //для ИНН в 12 знаков
  return (numbers.length == 12) &&
      ((numbers[10] ==
              ((7 * numbers[0] +
                          2 * numbers[1] +
                          4 * numbers[2] +
                          10 * numbers[3] +
                          3 * numbers[4] +
                          5 * numbers[5] +
                          9 * numbers[6] +
                          4 * numbers[7] +
                          6 * numbers[8] +
                          8 * numbers[9]) %
                      11) %
                  10) &&
          (numbers[11] ==
              ((3 * numbers[0] +
                          7 * numbers[1] +
                          2 * numbers[2] +
                          4 * numbers[3] +
                          10 * numbers[4] +
                          3 * numbers[5] +
                          5 * numbers[6] +
                          9 * numbers[7] +
                          4 * numbers[8] +
                          6 * numbers[9] +
                          8 * numbers[10]) %
                      11) %
                  10));
}
