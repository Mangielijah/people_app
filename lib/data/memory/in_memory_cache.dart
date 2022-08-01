import 'package:injectable/injectable.dart';
import 'package:people_app/domain/entities/person.dart';

@lazySingleton
class InMemoryCache {
  List<Person> _cachedValue = [];
  int currentSavedPages = 0;
  bool get isEmpty {
    return getCachedValue().isEmpty;
  }

  bool get isNotEmpty => !isEmpty;

  List<Person> getCachedValue() => _cachedValue;

  void save({required List<Person> data, required int page}) {
    if (isEmpty) {
      _cachedValue = data;
      currentSavedPages = page;
    } else {
      if (currentSavedPages < page) {
        _cachedValue.addAll(data);
        currentSavedPages = page;
      }
    }
  }
}
