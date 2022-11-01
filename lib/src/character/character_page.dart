import 'package:flutter/material.dart';
import 'package:hp_characters/src/components/app_colors.dart';
import 'package:hp_characters/src/character/character_repository.dart';

import '../components/character_house_colors.dart';
import '../model/character_model.dart';
import 'character_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = CharacterController(service: CharacterRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Harry Potter - Personagens'),
          backgroundColor: AppColors.rustGold,
        ),
        body: SingleChildScrollView(
          child: FutureBuilder<List<Character>>(
              future: controller.getCharacters(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                      children: snapshot.data!
                          .map((i) => Container(
                                margin: const EdgeInsets.only(
                                    left: 8, right: 8, top: 8),
                                child: Card(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, bottom: 8),
                                  child: ListTile(
                                    title: Text(
                                      i.name,
                                      style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    leading: SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(i.image),
                                      ),
                                    ),
                                    trailing: Text(
                                      i.house,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                          color: CharacterHouseColor(i.house)),
                                    ),
                                  ),
                                )),
                              ))
                          .toList());
                } else {
                  return const CircularProgressIndicator();
                }
              }),
        ));
  }
}
