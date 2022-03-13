class IntToString {
  static String weekDays(int weekday) {
    if (weekday == 1) {
      return "Dushanba";
    } else if (weekday == 2) {
      return "Seshanba";
    } else if (weekday == 3) {
      return "Chorshanba";
    } else if (weekday == 4) {
      return "Payshanba";
    } else if (weekday == 5) {
      return "Juma";
    } else if (weekday == 6) {
      return "Shanba";
    } else {
      return "Yakshanba ";
    }
  }

  static String month(int month) {
    if (month == 1) {
      return "январь";
    } else if (month == 2) {
      return "февраль";
    } else if (month == 3) {
      return "Март";
    } else if (month == 4) {
      return "апрель";
    } else if (month == 5) {
      return "май";
    } else if (month == 6) {
      return "июнь";
    } else if (month == 7) {
      return "июль";
    } else if (month == 8) {
      return "август";
    } else if (month == 9) {
      return "сентябрь";
    } else if (month == 10) {
      return "октябрь";
    } else if (month == 11) {
      return "ноябрь";
    } else {
      return "декабрь";
    }
  }
}
