import 'package:get/get.dart';

class Lang extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'ok': 'OK',
      'yes': 'Yes',
      'no': 'No',
      'exit': 'Exit',
      'cancel': 'Cancel',
      'confirm': 'Confirm',
    },
    'id_ID': {
      'ok': 'Oke',
      'yes': 'Ya',
      'no': 'Tidak',
      'exit': 'Keluar',
      'cancel': 'Batal',
      'confirm': 'Konfirmasi',
    },
    'ja_JP': {
      'ok': 'OK',
      'yes': 'はい', // Hai
      'no': 'いいえ', // Iie
      'exit': '終了', // Shūryō
      'cancel': 'キャンセル', // Kyanseru
      'confirm': '確認', // Kakunin
    },
  };
}
