import 'package:shared_preferences/shared_preferences.dart';

class LevelManager {
  static const String _prefix = 'level_';

  Future<int> getLevelScore(int level) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('$_prefix$level') ?? 0;
  }

  Future<void> saveLevelScore(int level, int score) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('$_prefix$level', score);
  }

  Future<bool> isNextLevelUnlocked(int level) async {
    final int currentLevelScore = await getLevelScore(level);
    final int nextLevelScore = await getLevelScore(level + 1);
    return nextLevelScore != null && nextLevelScore >= 0;
  }
}
