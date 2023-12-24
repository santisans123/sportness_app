import 'package:get/get.dart';

class ActivityController extends GetxController {
  final dropdownFrequency = '1'.obs;
  final dropdownFrequency2 = '1'.obs;
  final dropdownFrequency3 = '1'.obs;

  
  final dropdownorvalue = 'Balap Sepeda'.obs;
  final dropdownorvalue2 = 'Balap Sepeda'.obs;
  final dropdownorvalue3 = 'Balap Sepeda'.obs;

  final btn1 = false.obs;
  final btn2 = false.obs;
  final btn3 = false.obs;


  final age = 0.0.obs;
  final bb = 0.0.obs;
  final tb = 0.0.obs;
  final gd = "".obs;
  final af = "".obs;
  final af2 = "".obs;
  final af3 = "".obs;

  final dura = 0.0.obs;
  final dura2 = 0.0.obs;
  final dura3 = 0.0.obs;

  final bmrSum = 0.0.obs;
  final sdaSum = 0.0.obs;
  final afSum = 0.0.obs;

  final kelSum = 0.0.obs;
  final kelSum2 = 0.0.obs;
  final kelSum3 = 0.0.obs;

  final sumTot = 0.0.obs;

  final dailyCalorie = 0.0.obs;

  final carboSum = 0.0.obs;
  final proteinSum = 0.0.obs;
  final fatSum = 0.0.obs;

  void bmrCalculate(String gd, double bb, double age) {
    if (gd == "laki-laki") {
      if (bb >= 55 && bb <= 59) {
        if (age >= 10 && age <= 18) {
          bmrSum(1625);
        } else if (age > 18 && age <= 30) {
          bmrSum(1514);
        } else if (age > 30 && age <= 60) {
          bmrSum(1499);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 60 && bb <= 64) {
        if (age >= 10 && age <= 18) {
          bmrSum(1725);
        } else if (age > 18 && age <= 30) {
          bmrSum(1589);
        } else if (age > 30 && age <= 60) {
          bmrSum(1556);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 65 && bb <= 69) {
        if (age >= 10 && age <= 18) {
          bmrSum(1081);
        } else if (age > 18 && age <= 30) {
          bmrSum(1664);
        } else if (age > 30 && age <= 60) {
          bmrSum(1613);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 70 && bb <= 74) {
        if (age >= 10 && age <= 18) {
          bmrSum(1889);
        } else if (age > 18 && age <= 30) {
          bmrSum(1739);
        } else if (age > 30 && age <= 60) {
          bmrSum(1670);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 75 && bb <= 79) {
        if (age >= 10 && age <= 18) {
          bmrSum(1977);
        } else if (age > 18 && age <= 30) {
          bmrSum(1814);
        } else if (age > 30 && age <= 60) {
          bmrSum(1727);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 80 && bb <= 84) {
        if (age >= 10 && age <= 18) {
          bmrSum(2065);
        } else if (age > 18 && age <= 30) {
          bmrSum(1889);
        } else if (age > 30 && age <= 60) {
          bmrSum(1785);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 85 && bb <= 89) {
        if (age >= 10 && age <= 18) {
          bmrSum(2154);
        } else if (age > 18 && age <= 30) {
          bmrSum(1964);
        } else if (age > 30 && age <= 60) {
          bmrSum(1842);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 90 && bb <= 94) {
        if (age >= 10 && age <= 18) {
          bmrSum(2242);
        } else if (age > 18 && age <= 30) {
          bmrSum(2039);
        } else if (age > 30 && age <= 60) {
          bmrSum(1899);
        } else {
          bmrSum(0);
        }
      }
    } else {
      if (bb >= 40 && bb <= 44) {
        if (age >= 10 && age <= 18) {
          bmrSum(1224);
        } else if (age > 18 && age <= 30) {
          bmrSum(1075);
        } else if (age > 30 && age <= 60) {
          bmrSum(1167);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 45 && bb <= 49) {
        if (age >= 10 && age <= 18) {
          bmrSum(1291);
        } else if (age > 18 && age <= 30) {
          bmrSum(1149);
        } else if (age > 30 && age <= 60) {
          bmrSum(1207);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 50 && bb <= 54) {
        if (age >= 10 && age <= 18) {
          bmrSum(1357);
        } else if (age > 18 && age <= 30) {
          bmrSum(1223);
        } else if (age > 30 && age <= 60) {
          bmrSum(1248);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 55 && bb <= 59) {
        if (age >= 10 && age <= 18) {
          bmrSum(1424);
        } else if (age > 18 && age <= 30) {
          bmrSum(1296);
        } else if (age > 30 && age <= 60) {
          bmrSum(1288);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 60 && bb <= 64) {
        if (age >= 10 && age <= 18) {
          bmrSum(1491);
        } else if (age > 18 && age <= 30) {
          bmrSum(1370);
        } else if (age > 30 && age <= 60) {
          bmrSum(1329);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 65 && bb <= 69) {
        if (age >= 10 && age <= 18) {
          bmrSum(1557);
        } else if (age > 18 && age <= 30) {
          bmrSum(1444);
        } else if (age > 30 && age <= 60) {
          bmrSum(1369);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 70 && bb <= 74) {
        if (age >= 10 && age <= 18) {
          bmrSum(1624);
        } else if (age > 18 && age <= 30) {
          bmrSum(1516);
        } else if (age > 30 && age <= 60) {
          bmrSum(1410);
        } else {
          bmrSum(0);
        }
      } else if (bb >= 75 && bb <= 79) {
        if (age >= 10 && age <= 18) {
          bmrSum(1691);
        } else if (age > 18 && age <= 30) {
          bmrSum(1592);
        } else if (age > 30 && age <= 60) {
          bmrSum(1450);
        } else {
          bmrSum(0);
        }
      }
    }
  }

  void sdaCalculate(double bmr) {
    double sum;
    sum = (10 / 100) * bmr;
    sdaSum(sum);
  }

  void afCalculate(String activity, String gd, double bmr, double sda) {
    double sum;
    if (activity == "sangat-ringan") {
      sum = 1.30 * (bmr + sda);
      afSum(sum);
    } else if (activity == "ringan") {
      if (gd == "laki-laki") {
        sum = 1.56 * (bmr + sda);
        afSum(sum);
      } else {
        sum = 1.55 * (bmr + sda);
        afSum(sum);
      }
    } else if (activity == "sedang") {
      if (gd == "laki-laki") {
        sum = 1.76 * (bmr + sda);
        afSum(sum);
      } else {
        sum = 1.70 * (bmr + sda);
        afSum(sum);
      }
    } else {
      if (gd == "laki-laki") {
        sum = 2.10 * (bmr + sda);
        afSum(sum);
      } else {
        sum = 2.00 * (bmr + sda);
        afSum(sum);
      }
    }
  }


  double kelSumCal(double fre, double dura, double calorie) {
    return fre * dura * calorie;
  }

  double sumTotal() {
    return sumTot(kelSum() + kelSum2() + kelSum3() / 7);
  }

  void kelCalculate(double fre, double dura, double bb, String cabor) {
    if (bb >= 50 && bb <= 59) {
      if (cabor == 'Balap Sepeda') {
        kelSum(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Bulutangkis') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Basket') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Voli') {
        kelSum(kelSumCal(fre, dura, 2));
      } else if (cabor == 'Dayung') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Golf') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Hoki') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Judo') {
        kelSum(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Jalan Kaki') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Lari') {
        kelSum(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Latihan Beban') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Panahan') {
        kelSum(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Renang') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Senam') {
        kelSum(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Senam Aerobik') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Sepakbola') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tenis Meja') {
        kelSum(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Tinju') {
        kelSum(kelSumCal(fre, dura, 11));
      }
    } else if (bb >= 60 && bb <= 69) {
      if (cabor == 'Balap Sepeda') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Bulutangkis') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Basket') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Voli') {
        kelSum(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Dayung') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Golf') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Hoki') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Judo') {
        kelSum(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Jalan Kaki') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Lari') {
        kelSum(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Latihan Beban') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Panahan') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Renang') {
        kelSum(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Senam') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Senam Aerobik') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Sepakbola') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tenis Meja') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tinju') {
        kelSum(kelSumCal(fre, dura, 13));
      }
    } else if (bb >= 70 && bb <= 79) {
      if (cabor == 'Balap Sepeda') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Bulutangkis') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Basket') {
        kelSum(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Voli') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Dayung') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Golf') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Hoki') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Judo') {
        kelSum(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Jalan Kaki') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Lari') {
        kelSum(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Latihan Beban') {
        kelSum(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Panahan') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Renang') {
        kelSum(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Senam') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Senam Aerobik') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Sepakbola') {
        kelSum(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tenis Meja') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tinju') {
        kelSum(kelSumCal(fre, dura, 15));
      }
    } else if (bb >= 80 && bb <= 89) {
      if (cabor == 'Balap Sepeda') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Bulutangkis') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Basket') {
        kelSum(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Voli') {
        kelSum(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Dayung') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Golf') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Hoki') {
        kelSum(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Judo') {
        kelSum(kelSumCal(fre, dura, 15));
      } else if (cabor == 'Jalan Kaki') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Lari') {
        kelSum(kelSumCal(fre, dura, 15));
      } else if (cabor == 'Latihan Beban') {
        kelSum(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Panahan') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Renang') {
        kelSum(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Senam') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Senam Aerobik') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Sepakbola') {
        kelSum(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tenis Meja') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tinju') {
        kelSum(kelSumCal(fre, dura, 18));
      }
    } else if (bb >= 90 && bb <= 99) {
      if (cabor == 'Balap Sepeda') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Bulutangkis') {
        kelSum(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Basket') {
        kelSum(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Voli') {
        kelSum(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Dayung') {
        kelSum(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Golf') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Hoki') {
        kelSum(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Judo') {
        kelSum(kelSumCal(fre, dura, 17));
      } else if (cabor == 'Jalan Kaki') {
        kelSum(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Lari') {
        kelSum(kelSumCal(fre, dura, 17));
      } else if (cabor == 'Latihan Beban') {
        kelSum(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Panahan') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Renang') {
        kelSum(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Senam') {
        kelSum(kelSumCal(fre, dura, 16));
      } else if (cabor == 'Senam Aerobik') {
        kelSum(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Sepakbola') {
        kelSum(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Tenis Meja') {
        kelSum(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Tinju') {
        kelSum(kelSumCal(fre, dura, 20));
      }
    }
  }

  void kelCalculate2(double fre, double dura, double bb, String cabor) {
    if (bb >= 50 && bb <= 59) {
      if (cabor == 'Balap Sepeda') {
        kelSum2(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Bulutangkis') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Basket') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Voli') {
        kelSum2(kelSumCal(fre, dura, 2));
      } else if (cabor == 'Dayung') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Golf') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Hoki') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Judo') {
        kelSum2(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Jalan Kaki') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Lari') {
        kelSum2(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Latihan Beban') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Panahan') {
        kelSum2(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Renang') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Senam') {
        kelSum2(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Senam Aerobik') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Sepakbola') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tenis Meja') {
        kelSum2(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Tinju') {
        kelSum2(kelSumCal(fre, dura, 11));
      }
    } else if (bb >= 60 && bb <= 69) {
      if (cabor == 'Balap Sepeda') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Bulutangkis') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Basket') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Voli') {
        kelSum2(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Dayung') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Golf') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Hoki') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Judo') {
        kelSum2(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Jalan Kaki') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Lari') {
        kelSum2(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Latihan Beban') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Panahan') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Renang') {
        kelSum2(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Senam') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Senam Aerobik') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Sepakbola') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tenis Meja') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tinju') {
        kelSum2(kelSumCal(fre, dura, 13));
      }
    } else if (bb >= 70 && bb <= 79) {
      if (cabor == 'Balap Sepeda') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Bulutangkis') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Basket') {
        kelSum2(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Voli') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Dayung') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Golf') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Hoki') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Judo') {
        kelSum2(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Jalan Kaki') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Lari') {
        kelSum2(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Latihan Beban') {
        kelSum2(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Panahan') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Renang') {
        kelSum2(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Senam') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Senam Aerobik') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Sepakbola') {
        kelSum2(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tenis Meja') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tinju') {
        kelSum2(kelSumCal(fre, dura, 15));
      }
    } else if (bb >= 80 && bb <= 89) {
      if (cabor == 'Balap Sepeda') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Bulutangkis') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Basket') {
        kelSum2(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Voli') {
        kelSum2(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Dayung') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Golf') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Hoki') {
        kelSum2(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Judo') {
        kelSum2(kelSumCal(fre, dura, 15));
      } else if (cabor == 'Jalan Kaki') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Lari') {
        kelSum2(kelSumCal(fre, dura, 15));
      } else if (cabor == 'Latihan Beban') {
        kelSum2(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Panahan') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Renang') {
        kelSum2(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Senam') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Senam Aerobik') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Sepakbola') {
        kelSum2(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tenis Meja') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tinju') {
        kelSum2(kelSumCal(fre, dura, 18));
      }
    } else if (bb >= 90 && bb <= 99) {
      if (cabor == 'Balap Sepeda') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Bulutangkis') {
        kelSum2(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Basket') {
        kelSum2(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Voli') {
        kelSum2(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Dayung') {
        kelSum2(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Golf') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Hoki') {
        kelSum2(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Judo') {
        kelSum2(kelSumCal(fre, dura, 17));
      } else if (cabor == 'Jalan Kaki') {
        kelSum2(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Lari') {
        kelSum2(kelSumCal(fre, dura, 17));
      } else if (cabor == 'Latihan Beban') {
        kelSum2(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Panahan') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Renang') {
        kelSum2(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Senam') {
        kelSum2(kelSumCal(fre, dura, 16));
      } else if (cabor == 'Senam Aerobik') {
        kelSum2(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Sepakbola') {
        kelSum2(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Tenis Meja') {
        kelSum2(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Tinju') {
        kelSum2(kelSumCal(fre, dura, 20));
      }
    }
  }

  void kelCalculate3(double fre, double dura, double bb, String cabor) {
    if (bb >= 50 && bb <= 59) {
      if (cabor == 'Balap Sepeda') {
        kelSum3(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Bulutangkis') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Basket') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Voli') {
        kelSum3(kelSumCal(fre, dura, 2));
      } else if (cabor == 'Dayung') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Golf') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Hoki') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Judo') {
        kelSum3(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Jalan Kaki') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Lari') {
        kelSum3(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Latihan Beban') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Panahan') {
        kelSum3(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Renang') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Senam') {
        kelSum3(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Senam Aerobik') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Sepakbola') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tenis Meja') {
        kelSum3(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Tinju') {
        kelSum3(kelSumCal(fre, dura, 11));
      }
    } else if (bb >= 60 && bb <= 69) {
      if (cabor == 'Balap Sepeda') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Bulutangkis') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Basket') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Voli') {
        kelSum3(kelSumCal(fre, dura, 3));
      } else if (cabor == 'Dayung') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Golf') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Hoki') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Judo') {
        kelSum3(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Jalan Kaki') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Lari') {
        kelSum3(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Latihan Beban') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Panahan') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Renang') {
        kelSum3(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Senam') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Senam Aerobik') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Sepakbola') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tenis Meja') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Tinju') {
        kelSum3(kelSumCal(fre, dura, 13));
      }
    } else if (bb >= 70 && bb <= 79) {
      if (cabor == 'Balap Sepeda') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Bulutangkis') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Basket') {
        kelSum3(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Voli') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Dayung') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Golf') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Hoki') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Judo') {
        kelSum3(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Jalan Kaki') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Lari') {
        kelSum3(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Latihan Beban') {
        kelSum3(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Panahan') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Renang') {
        kelSum3(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Senam') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Senam Aerobik') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Sepakbola') {
        kelSum3(kelSumCal(fre, dura, 10));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tenis Meja') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tinju') {
        kelSum3(kelSumCal(fre, dura, 15));
      }
    } else if (bb >= 80 && bb <= 89) {
      if (cabor == 'Balap Sepeda') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Bulutangkis') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Basket') {
        kelSum3(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Voli') {
        kelSum3(kelSumCal(fre, dura, 4));
      } else if (cabor == 'Dayung') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Golf') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Hoki') {
        kelSum3(kelSumCal(fre, dura, 7));
      } else if (cabor == 'Judo') {
        kelSum3(kelSumCal(fre, dura, 15));
      } else if (cabor == 'Jalan Kaki') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Lari') {
        kelSum3(kelSumCal(fre, dura, 15));
      } else if (cabor == 'Latihan Beban') {
        kelSum3(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Panahan') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Renang') {
        kelSum3(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Senam') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Senam Aerobik') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Sepakbola') {
        kelSum3(kelSumCal(fre, dura, 11));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tenis Meja') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Tinju') {
        kelSum3(kelSumCal(fre, dura, 18));
      }
    } else if (bb >= 90 && bb <= 99) {
      if (cabor == 'Balap Sepeda') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Bulutangkis') {
        kelSum3(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Basket') {
        kelSum3(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Voli') {
        kelSum3(kelSumCal(fre, dura, 5));
      } else if (cabor == 'Dayung') {
        kelSum3(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Golf') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Hoki') {
        kelSum3(kelSumCal(fre, dura, 8));
      } else if (cabor == 'Judo') {
        kelSum3(kelSumCal(fre, dura, 17));
      } else if (cabor == 'Jalan Kaki') {
        kelSum3(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Lari') {
        kelSum3(kelSumCal(fre, dura, 17));
      } else if (cabor == 'Latihan Beban') {
        kelSum3(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Panahan') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Renang') {
        kelSum3(kelSumCal(fre, dura, 14));
      } else if (cabor == 'Senam') {
        kelSum3(kelSumCal(fre, dura, 16));
      } else if (cabor == 'Senam Aerobik') {
        kelSum3(kelSumCal(fre, dura, 9));
      } else if (cabor == 'Sepakbola') {
        kelSum3(kelSumCal(fre, dura, 12));
      } else if (cabor == 'Tenik Lapangan') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Tenis Meja') {
        kelSum3(kelSumCal(fre, dura, 6));
      } else if (cabor == 'Tinju') {
        kelSum3(kelSumCal(fre, dura, 20));
      }
    }
  }

  double sumAddCal(double age, double af, double kel, double add) {
    return af + kel + (age * add);
  }

  void addCalorieOptional(double af, double kel, double bb, double age) {
    double sum;
    if (age >= 10 && age <= 18) {
      if (age >= 10 && age <= 14) {
        sum = sumAddCal(age, af, kel, 2);
      } else if (age == 15) {
        sum = sumAddCal(age, af, kel, 1);
      } else {
        sum = sumAddCal(age, af, kel, 0.5);
      }
    } else if (age >= 19) {
      sum = sumAddCal(age, af, kel, 0);
    } else {
      sum = 0;
    }
    dailyCalorie(sum);
  }

  void carboCalculate(double dailyCal) {
    carboSum(((70 / 100) * dailyCal) / 4);
  }

  void proteinCalculate(double dailyCal) {
    proteinSum(((10 / 100) * dailyCal) / 4);
  }

  void fatCalculate(double dailyCal) {
    fatSum(((20 / 100) * dailyCal) / 9);
  }
}
