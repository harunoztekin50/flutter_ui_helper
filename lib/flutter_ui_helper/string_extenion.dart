extension StringExtensiyon on String {
  /// Geçersizse hata mesajı, geçerliyse null döner.
  String? get isValidEmail {
    // 1- Boş mu?
    if (isEmpty) {
      return EmailKurallari.bosMesaj;
    }

    // 2- Uzunluk kontrolü
    if (length < EmailKurallari.minUzunluk) {
      return EmailKurallari.minUzunlukMesaj;
    }

    if (length > EmailKurallari.maxUzunluk) {
      return EmailKurallari.maxUzunlukMesaj;
    }

    // 3- Format kontrolü
    if (!EmailKurallari.emailRegex.hasMatch(this)) {
      return EmailKurallari.formatMesaj;
    }

    // Buraya geldiyse email geçerli
    return null;
  }

  String? get isValidPasword {
    // 1- Boş mu?
    if (isEmpty) {
      return SifreKurallari.bosMesaj;
    }

    // 2- Uzunluk kontrolü
    if (length < SifreKurallari.minUzunluk) {
      return SifreKurallari.minUzunlukMesaj;
    }

    if (length > SifreKurallari.maxUzunluk) {
      return SifreKurallari.maxUzunlukMesaj;
    }

    // 3- Rakam var mı?
    if (!SifreKurallari.rakamRegex.hasMatch(this)) {
      return SifreKurallari.rakamMesaj;
    }

    // 4- Büyük harf var mı?
    if (!SifreKurallari.buyukHarfRegex.hasMatch(this)) {
      return SifreKurallari.buyukHarfMesaj;
    }

    // 5- Küçük harf var mı?
    if (!SifreKurallari.kucukHarfRegex.hasMatch(this)) {
      return SifreKurallari.kucukHarfMesaj;
    }

    // 6- Özel karakter var mı?
    if (!SifreKurallari.ozelKarakterRegex.hasMatch(this)) {
      return SifreKurallari.ozelKarakterMesaj;
    }

    // Her kuralı geçti, hata yok
    return null;
  }
}

/// Şifre ile ilgili sabitler ve kurallar burada
class SifreKurallari {
  // Uzunluk sınırları
  static const int minUzunluk = 6;
  static const int maxUzunluk = 32;

  // Regex sabitleri
  static final RegExp rakamRegex = RegExp(r'[0-9]');
  static final RegExp buyukHarfRegex = RegExp(r'[A-Z]');
  static final RegExp kucukHarfRegex = RegExp(r'[a-z]');
  static final RegExp ozelKarakterRegex = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');

  // Mesaj sabitleri
  static const String bosMesaj = "Şifre boş olamaz";
  static const String minUzunlukMesaj =
      "Şifre en az $minUzunluk karakter olmalı";
  static const String maxUzunlukMesaj =
      "Şifre en fazla $maxUzunluk karakter olmalı";
  static const String rakamMesaj = "Şifre en az 1 rakam içermeli";
  static const String buyukHarfMesaj = "Şifre en az 1 büyük harf içermeli";
  static const String kucukHarfMesaj = "Şifre en az 1 küçük harf içermeli";
  static const String ozelKarakterMesaj =
      "Şifre en az 1 özel karakter içermeli";
}

/// E-posta ile ilgili sabitler ve kurallar
class EmailKurallari {
  // Uzunluk sınırları
  static const int minUzunluk = 5;
  static const int maxUzunluk = 254;

  // Basit ama iş gören e-posta regex'i
  static final RegExp emailRegex = RegExp(
    r'^[\w\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z]{2,}$',
  );

  // Mesaj sabitleri
  static const String bosMesaj = "E-posta boş olamaz";
  static const String minUzunlukMesaj =
      "E-posta en az $minUzunluk karakter olmalı";
  static const String maxUzunlukMesaj =
      "E-posta en fazla $maxUzunluk karakter olabilir";
  static const String formatMesaj = "Lütfen geçerli bir e-posta adresi girin";
}
