import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places_app/models/place.dart';

class UserPlacesNorifier extends StateNotifier<List<Place>> {
  UserPlacesNorifier() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);

    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNorifier, List<Place>>(
  (ref) => UserPlacesNorifier(),
);
