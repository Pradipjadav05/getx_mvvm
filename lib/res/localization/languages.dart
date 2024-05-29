import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "email_hint": "Enter Email",
          "password_hint": "Enter Password",
          "Internet_exception" : "We are unable to show result. \nPlease check your data \nconnection.",
          "Retry" : "Retry",
          "General_exception" : "We are unable to Process your request. \nPlease try again.",
          "Try Again" : "Try Again"
        },
        "gu_IN": {
          "email_hint": "ઈમેલ દાખલ કરો",
          "password_hint": "Enter Password",
          "Internet_exception" : "અમે પરિણામ બતાવવામાં અસમર્થ છીએ. \nકૃપા કરીને તમારો ડેટા \nકનેક્શન તપાસો.",
          "Retry" : "ફરી પ્રયાસ કરો",
          "General_exception" : "અમે તમારી વિનંતી પર પ્રક્રિયા કરવામાં અસમર્થ છીએ. \nકૃપા કરીને ફરી પ્રયાસ કરો.",
          "Try Again" : "ફરીથી પ્રયત્ન કરો",
        },
        "hi_IN": {
          "email_hint": "ईमेल दर्ज करें",
          "password_hint": "Enter Password",
          "Internet_exception" : "हम परिणाम दिखाने में असमर्थ हैं. \nकृपया अपना डेटा \nकनेक्शन जांचें।",
          "Retry" : "पुनः प्रयास करें",
          "General_exception" : "हम आपके अनुरोध को प्रोसेस करने में सक्षम नहीं हैं। \nकृपया पुनः प्रयास करें।",
          "Try Again" : "पुनः प्रयास करें"
        },
      };
}
