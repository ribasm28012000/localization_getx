import 'package:get/get.dart';

class ChangeLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Translate',
          'message': 'Current Language : English',
          'profile': 'Profile',
          'txtok': 'OK',
          'chanlang': 'Change Language',
          'hintText': 'Enter Your Name',
          'hintText1': 'Enter Your Position',
          'selectlang': 'Select Language',
          'popuptitle': 'Change Keyboard Layout to English',
          'popupdes':
              'To Use English keyboard, Please change your system keyboard layout to english.',
          'defaultvalue': 'Hi Sample Read Value'
        },
        'ar_SA': {
          'title': 'يترجم',
          'message': 'اللغة الحالية : الانجليزية',
          'profile': 'حساب تعريفي',
          'chanlang': 'تغيير اللغة',
          'txtok': 'نعم',
          'hintText': 'أدخل أسمك',
          'hintText1': 'أدخل موقعك',
          'selectlang': 'اختار اللغة',
          'popuptitle': 'تغيير تخطيط لوحة المفاتيح إلى اللغة الإنجليزية',
          'popupdes':
              'لاستخدام لوحة المفاتيح الإنجليزية، يرجى تغيير تخطيط لوحة مفاتيح النظام إلى اللغة الإنجليزية.',
          'defaultvalue': 'مرحبا نموذج قراءة القيمة'
        },
      };
}
