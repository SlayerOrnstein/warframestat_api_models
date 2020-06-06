import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_api_models/warframestat_api_models.dart';

import 'fixtures/fixture.dart';

void main() {
  final worldstateFixture = fixture('worldstate.json');
  final dropTableFixture = fixture('drops.json');
  final synthTargetsFixture = fixture('synthTargets.json');

  final warframeItemFixture = fixture('chroma_prime.json');
  final weaponItemFixture = fixture('aklex_prime.json');
  final meleeItemFixture = fixture('Ack_&_Brunt.json');
  final randomItemsFixture = fixture('random.json');

  group('Make sure json are properly serialized', () {
    test('worldstate', () {
      WorldstateModel.fromJson(json.decode(worldstateFixture));
    });

    test('drop table', () {
      (json.decode(dropTableFixture) as List<dynamic>)
          .map((dynamic e) => SlimDropModel.fromJson(e as Map<String, dynamic>))
          .toList();
    });

    test('synthTarget', () {
      (json.decode(synthTargetsFixture) as List<dynamic>)
          .map((dynamic e) =>
              SynthTargetModel.fromJson(e as Map<String, dynamic>))
          .toList();
    });

    group('Warframe Items', () {
      test('warframe', () {
        BioWeaponModel.fromJson(
            json.decode(warframeItemFixture) as Map<String, dynamic>);
      });

      test('weapon', () {
        WeaponModel.fromJson(
            json.decode(weaponItemFixture) as Map<String, dynamic>);
      });

      test('melee', () {
        WeaponModel.fromJson(
            json.decode(meleeItemFixture) as Map<String, dynamic>);
      });

      test('random items', () {
        (json.decode(randomItemsFixture) as List<dynamic>)
            .map((dynamic e) => toBaseItem(e as Map<String, dynamic>))
            .toList();
      });
    });
  });
}

// ignore: missing_return
BaseItem toBaseItem(Map<String, dynamic> item) {
  switch (item['category'] as String) {
    case 'Archwings':
      continue warframe;
    case 'Pets':
      continue warframe;
    case 'Sentinels':
      continue warframe;

    case 'Secondry':
      continue weapon;
    case 'Melee':
      continue weapon;
    case 'Arch-Gun':
      continue weapon;
    case 'Arch-Melee':
      continue weapon;

    warframe:
    case 'Warframes':
      return BioWeaponModel.fromJson(item);
    weapon:
    case 'Primary':
      return WeaponModel.fromJson(item);

    default:
      return BaseItemModel.fromJson(item);
  }
}
