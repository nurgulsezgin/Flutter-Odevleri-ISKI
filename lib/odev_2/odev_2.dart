import 'dart:io';

void main() {
  print('\nKenar Sayısı Giriniz : ');
  String? input1 = stdin.readLineSync();
  int? input1Int = convertInt(input1);
  print('İç Açılar Toplamı : ${icAcilarToplami(input1Int!)} derece');

  print('\nGün Sayısı Giriniz  : ');
  String? input2 = stdin.readLineSync();
  int? input2Int = convertInt(input2);
  print('Maaş : ${maasHesapla(input2Int!)} TL');

  print('\nKota miktarını GB cinsinden giriniz:');
  String? input3 = stdin.readLineSync();
  int? input3Int = convertInt(input3);
  print('Kota Ücreti : ${kotaUcretiHesapla(input3Int!)} TL');

  print('\nDerece :');
  String? input4 = stdin.readLineSync();
  double? input4Double = convertDouble(input4);
  print('Fahrenhiet : ${dereceyiFahrenhietYap(input4Double!)} TL');

  print('\nBirinci Kenar :');
  String? input5a = stdin.readLineSync();
  double? input5aDouble = convertDouble(input5a);
  print('İkinci Kenar :');
  String? input5b = stdin.readLineSync();
  double? input5bDouble = convertDouble(input5b);
  print(
    'Dikdörtgenin Çevresi : ${dikdortgenCevresi(input5aDouble!, input5bDouble!)} TL',
  );

  print('\nBir Sayı Giriniz :');
  String? input6 = stdin.readLineSync();
  int? input6Int = convertInt(input6);
  print('Faktöriyeli :  ${faktoriyelHesapla(input6Int!)} TL');

  print('\nBir Kelime Giriniz :');
  String? input7 = stdin.readLineSync();
  print(' ${kacAdetAHarfiIcerir(input7!)} adet a veya A harfi içerir.');
}

int? convertInt(String? inputText) {
  if (inputText == null) return null;

  int? inputSayi = int.tryParse(inputText);
  if (inputSayi != null) {
    return inputSayi;
  } else {
    print('Geçerli bir sayı giriniz.');
    return -1;
  }
}

double? convertDouble(String? inputText) {
  if (inputText == null) return null;

  double? inputDoubleSayi = double.tryParse(inputText);
  if (inputDoubleSayi != null) {
    return inputDoubleSayi;
  } else {
    print('Geçerli bir sayı giriniz.');
    return -1;
  }
}

//------------------1---------------------
//Parametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayıp sonucu geri gönderen metod
int icAcilarToplami(int kenarSayisi) {
  if (kenarSayisi < 3) {
    print('Bir çokgen en az 3 kenarlı olmalıdır');
    return 0;
  } else {
    return (kenarSayisi - 2) * 180;
  }
}

//------------------2---------------------
//Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod
//1 günde 8 saat çalışılabilir.
// Çalışma saat ücreti : 10 ₺
// Mesai saat ücreti: 20 ₺
// 160 saat üzeri mesai sayılır.

int maasHesapla(int gunSayisi) {
  if (gunSayisi <= 0) {
    return 0;
  }

  int toplamSaat = gunSayisi * 8;
  const saatlikNormalUcret = 10;
  const saatlikMesaiUcreti = 20;

  return (toplamSaat < 160)
      ? toplamSaat * saatlikNormalUcret
      : 160 * saatlikNormalUcret + (toplamSaat - 160) * saatlikMesaiUcreti;
}

//------------------3---------------------
// Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren metodu yazınız.
// 50 GB = 100 ₺
// Kota aşımından sonra her 1 GB, 4 ₺'dir.

int kotaUcretiHesapla(int gbMiktar) {
  if (gbMiktar <= 50) {
    return 100;
  } else {
    return 100 + (gbMiktar - 50) * 4;
  }
}

//------------------4---------------------
double dereceyiFahrenhietYap(double derece) {
  // F = C x 1.8 + 32 formülü
  return (derece * 1.8) + 32;
}

//------------------5---------------------
double dikdortgenCevresi(double kenar1, double kenar2) {
  return (kenar1 > 0 && kenar2 > 0) ? 2 * (kenar1 + kenar2) : 0;
}

//------------------6---------------------
int faktoriyelHesapla(int sayi) {
  if (sayi == 0 || sayi == 1) {
    return 1;
  } else if (sayi < 0) {
    print("Negatif sayıların faktoriyeli hesaplanamaz.");
    return 0;
  } else {
    return sayi * faktoriyelHesapla(sayi - 1);
  }
}

//------------------7---------------------
int kacAdetAHarfiIcerir(String kelime) {
  int count = 0;
  for (int i = 0; i < kelime.length; i++) {
    if (kelime[i] == 'a' || kelime[i] == 'A') {
      count++;
    }
  }
  return count;
}
