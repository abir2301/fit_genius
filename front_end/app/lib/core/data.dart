class Data {
  static List<String> deficiencies = [
    'Iron',
    'Vitamin D',
    'Vitamin B12',
    'Calcium',
    'Magnesium',
    'Other'
  ];
  static List<String> allergies = [
    'Lactose intolerance',
    'Celias disease',
    'Peanut',
    'Seafood',
    'other',
  ];
  static List<String> chronicDiseases = [
    'Heart disease',
    'diabetes',
    'chronic kidney disease (CKD)',
    'other',
  ];
  static List<String> sports = [
    'Heart disease',
    'diabetes',
    'chronic kidney disease (CKD)',
    'other',
  ];
  static int userSessionDuration = 0;
  static String userJob = "";
  static Map<String, bool> userAllergies = {};
  static Map<String, bool> userDeficiencies = {};
  static Map<String, bool> userChronicDiseases = {};
  static Map<String, bool> userSports = {};

  set setUserDeficiencies(Map<String, bool> userDeficiencies) =>
      Data.userDeficiencies;
  set setUserSports(Map<String, bool> userSports) => Data.userSports;

  set setUserAllergies(Map<String, bool> userAllergies) => Data.userAllergies;
  set setUserChronicDiseases(Map<String, bool> userChronicDiseases) =>
      Data.userChronicDiseases;
  set setUserSessionDuration(int duration) => Data.userSessionDuration;
  set setUserJob(String job) => Data.userJob;
}
