import 'package:flutter_test/flutter_test.dart';
import 'package:is_inn/is_inn.dart';

final validInn = [
  '6449013711',
  '3664069397',
  '4205001725',
  '7743880975',
  '6447207743',
  '4205036090',
  '4205046123',
  '0660534489',
  '4205060689',
  '3694555299',
  '4205109214',
  '300504899258',
  '635277570478',
  '451408304546',
  '079285641150',
  '793970318200',
  '459147066360',
  '722433057002',
  499918818482,
  383391302210,
  9198578814,
  4207003319,
  4207008719,
];

final invalidInn = [
  '234432432',
  '423543534553',
  '123455342554321',
  'qwerty123qwerty',
  '11150уц09301',
  '1110005080',
  '4234324324',
  '54654645666',
  '1112427095',
  '1114327151',
  '1111111111',
  0123456789,
  'test',
  Object,
  Object(),
  true,
  false,
  null,
  1234,
  3833913022.10,
  [],
  {}
];

void main() {
  group('Check INN', () {
    validInn.forEach((inn) {
      test('$inn should be correct', () {
        expect(isInn(inn), true);
      });
    });
    invalidInn.forEach((inn) {
      test('$inn should be wrong', () {
        expect(isInn(inn), false);
      });
    });
  });
}
