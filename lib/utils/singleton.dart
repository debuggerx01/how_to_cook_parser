class Singleton {
  Singleton._();

  static final _instance = Singleton._();

  factory Singleton() => _instance;

  String? currentRepoCommitId;

  String? currentDishPath;

  final List<String> updatedDishes = [];
  final List<String> createdDishes = [];
}
