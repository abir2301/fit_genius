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

  static var WorkoutPlan = {
    "workoutPlan_id": 110,
    "exercices": [
      {
        "exercice_id": 1,
        "isDone": false,
        "name": "aptitude ",
        "image": "aptitude.png",
        "desc":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
        "duree": 30
      },
      {
        "exercice_id": 2,
        "isDone": false,
        "name": "fentes",
        "image": "fentes.png",
        "desc":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
        "duree": 30
      },
      {
        "exercice_id": 3,
        "isDone": false,
        "name": "pose-de-yoga ",
        "image": "pose-de-yoga.png",
        "desc":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
        "duree": 30
      },
      {
        "exercice_id": 4,
        "isDone": false,
        "name": "femme sport ",
        "image": "femme.png",
        "desc":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
        "duree": 30
      },
      {
        "exercice_id": 5,
        "isDone": false,
        "name": "faire-du-jogging",
        "image": "faire-du-jogging.png",
        "desc":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
        "duree": 30
      }
    ],
  };
}
