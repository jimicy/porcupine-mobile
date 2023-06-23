import 'package:flutter/cupertino.dart';

const Map<String, String> questionMap = {
  '3': 'My age is:',
  '4': 'My biological sex is:',
  '5': 'My sexual orientation is:',
  '6': 'My preferred language is:',
  '7': 'My race is:',
  '8': 'My ethnicity is:',
};

class UserNotifier extends ChangeNotifier {
  String _userEmail = '';
  Map<String, dynamic> _userSurvey = {};
  Map<String, dynamic> _userClinicSurvey = {};

  String get userEmail => _userEmail;
  Map<String, dynamic> get userSurvey => _userSurvey;
  Map<String, dynamic> get clinicSurvey => _userClinicSurvey;

  String get gptPromptContext {
    String context =
        "Here is personal info about the user. Please use this to tailor your responses to best suit this user.\n";

    _userSurvey.forEach((key, value) {
      if (questionMap.containsKey(key)) {
        context += "${questionMap[key]! + " " + value}\n";
      }
    });

    return context;
  }

  void setUserEmail(String email) {
    _userEmail = email;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void setUserSurvey(Map<String, dynamic> userSurvey) {
    _userSurvey = userSurvey;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void setClinicSurvey(Map<String, dynamic> clincSurvey) {
    _userClinicSurvey = clincSurvey;
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}
