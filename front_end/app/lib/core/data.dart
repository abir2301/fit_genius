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
    'Hit',
    'Zumba',
    'running',
    'bodybuilding',
    'cardio',
  ];
  static List<String> sessionsDuration = [
    '20',
    '25',
    '30',
    '40',
  ];
  static List<String> jobs = ["office job", "other"];
  static int userSessionDuration = 0;
  static Map<String, bool> userJob = {};
  static Map<String, bool> userAllergies = {};
  static Map<String, bool> userDeficiencies = {};
  static Map<String, bool> userChronicDiseases = {};
  static Map<String, bool> userSessionsDuration = {};
  static Map<String, bool> userSports = {};

  set setUserDeficiencies(Map<String, bool> userDeficiencies) =>
      Data.userDeficiencies;

  set setUserSessionsDuration(Map<String, bool> userSessionsDuration) =>
      Data.userSessionsDuration;

  set setUserSports(Map<String, bool> userSports) => Data.userSports;

  set setUserAllergies(Map<String, bool> userAllergies) => Data.userAllergies;
  set setUserChronicDiseases(Map<String, bool> userChronicDiseases) =>
      Data.userChronicDiseases;
  set setUserSessionDuration(int duration) => Data.userSessionDuration;
  set setUserJob(Map<String, bool> job) => Data.userJob;

  static var mealsPlan = {
    "diet_id": 1100,
    'meals': [
      {
        "meal_id": 1,
        "calories": 1254,
        "is_done": false,
        "protein": 120,
        "carbs": 1000,
        "fibers": 1200,
        "ingredients ": [
          {'ingredient_id': 2, "name": "onion", "qantity": 100},
          {'ingredient_id': 1, "name": "tomate", "qantity": 200},
          {'ingredient_id': 3, "name": "povron", "qantity": 20}
        ]
      },
      {
        "meal_id": 2,
        "calories": 1254,
        "is_done": false,
        "protein": 120,
        "carbs": 1000,
        "fibers": 1200,
        "ingredients ": [
          {'ingredient_id': 2, "name": "onion", "qantity": 100},
          {'ingredient_id': 1, "name": "tomate", "qantity": 200},
          {'ingredient_id': 3, "name": "povron", "qantity": 20}
        ]
      },
      {
        "meal_id": 3,
        "calories": 1254,
        "is_done": false,
        "protein": 120,
        "carbs": 1000,
        "fibers": 1200,
        "ingredients ": [
          {'ingredient_id': 2, "name": "onion", "qantity": 100},
          {'ingredient_id': 1, "name": "tomate", "qantity": 200},
          {'ingredient_id': 3, "name": "povron", "qantity": 20}
        ]
      },
      {
        "meal_id": 4,
        "calories": 1254,
        "is_done": false,
        "protein": 120,
        "carbs": 1000,
        "fibers": 1200,
        "ingredients ": [
          {'ingredient_id': 2, "name": "onion", "qantity": 100},
          {'ingredient_id': 1, "name": "tomate", "qantity": 200},
          {'ingredient_id': 3, "name": "povron", "qantity": 20}
        ]
      },
      {
        "meal_id": 5,
        "calories": 1254,
        "is_done": false,
        "protein": 120,
        "carbs": 1000,
        "fibers": 1200,
        "ingredients ": [
          {'ingredient_id': 2, "name": "onion", "qantity": 100},
          {'ingredient_id': 1, "name": "tomate", "qantity": 200},
          {'ingredient_id': 3, "name": "povron", "qantity": 20}
        ]
      }
    ]
  };
}
