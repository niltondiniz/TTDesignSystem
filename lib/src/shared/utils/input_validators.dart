import 'package:validators/validators.dart' as validators;

bool isEmail(String str) {
  return validators.isEmail(str);
}

bool isPhone(String str) {
  return validators.isLength(str, 14, 15);
}

bool isSearch(String str) {
  return validators.isLength(str, 2, 50);
}

bool isCreditCard(String str) {
  return validators.isCreditCard(str);
}

bool isCVV(String str) {
  return validators.isLength(str, 3);
}

bool isCPF(String str) {
  return validators.isLength(str, 14);
}

bool isRG(String str) {
  return validators.isLength(str, 11);
}

bool isCEP(String str) {
  return validators.isLength(str, 9);
}

bool isState(String str) {
  return validators.isLength(str, 2);
}

bool isDate(String str) {
  if (!isNullOrEmpty(str)) {
    var year = str.split('/')[2];
    var month = str.split('/')[1];
    var day = str.split('/')[0];
    return validators.isDate('$year-$month-$day');
  } else {
    return false;
  }
}

bool isCardExpiryDate(String str) {
  if (!isNullOrEmpty(str)) {
    int month = int.parse(str.split('/')[0]);
    int year = int.parse(str.split('/')[1]);

    int currentMont = DateTime.now().month;
    int currentYear = (2000 - DateTime.now().year) * -1;

    if (year == currentYear) {
      return month >= currentMont;
    } else if (year > currentYear) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool isNotEmpty(String str) {
  return !(str == '');
}

bool noValidate(String str) {
  return true;
}

bool isNullOrEmpty(String str) {
  if (validators.isNull(str)) {
    return true;
  }

  if (str == '') {
    return true;
  }

  return false;
}

bool freeRouteHasValue(String str) {
  if (str == '') {
    return false;
  }

  var money = double.parse(str.replaceFirst('R\$', '').replaceFirst(',', '.'));
  if (money > 0) {
    return true;
  }

  return false;
}
