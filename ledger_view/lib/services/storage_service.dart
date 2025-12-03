import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _csvUrlKey = 'csv_url';
  static const String _lastSearchKey = 'last_search';

  static Future<SharedPreferences> _getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  /// Save the CSV URL to persistent storage
  static Future<void> saveCsvUrl(String url) async {
    final prefs = await _getPrefs();
    await prefs.setString(_csvUrlKey, url);
  }

  /// Get the saved CSV URL from persistent storage
  static Future<String?> getCsvUrl() async {
    final prefs = await _getPrefs();
    return prefs.getString(_csvUrlKey);
  }

  /// Save the last search query
  static Future<void> saveLastSearch(String query) async {
    final prefs = await _getPrefs();
    await prefs.setString(_lastSearchKey, query);
  }

  /// Get the last search query
  static Future<String?> getLastSearch() async {
    final prefs = await _getPrefs();
    return prefs.getString(_lastSearchKey);
  }

  /// Clear all settings (reset)
  static Future<void> clearAll() async {
    final prefs = await _getPrefs();
    await prefs.clear();
  }
}
