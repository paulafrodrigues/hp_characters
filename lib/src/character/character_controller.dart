import 'package:hp_characters/src/character/character_repository.dart';

import '../model/character_model.dart';


class CharacterController {
  final CharacterRepository service;

  const CharacterController({required this.service});

  Future<List<Character>> getCharacters() async {
    try {
      final response = await service.getCharacters();
      return response;
    } catch (e) {
      rethrow;
    }
  }
}