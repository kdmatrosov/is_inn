# is_inn

Checking the validity of INN / Проверка валидности ИНН с [вычислением контрольной суммы](https://ru.wikipedia.org/wiki/%D0%98%D0%B4%D0%B5%D0%BD%D1%82%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D1%8B%D0%B9_%D0%BD%D0%BE%D0%BC%D0%B5%D1%80_%D0%BD%D0%B0%D0%BB%D0%BE%D0%B3%D0%BE%D0%BF%D0%BB%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%89%D0%B8%D0%BA%D0%B0)

## Usage
```dart
import 'package:is_inn/is_inn.dart';

void main() {
  print(isInn('7743880975')); // true
  print(isInn(499918818482)); // true
  print(isInn(0123456789)); // false
}
```

