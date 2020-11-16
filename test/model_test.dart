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
      WorldstateModel.fromJson(
          json.decode(worldstateFixture) as Map<String, dynamic>);
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
        WarframeModel.fromJson(
            json.decode(warframeItemFixture) as Map<String, dynamic>);
      });

      test('weapon', () {
        ProjectileWeaponModel.fromJson(
            json.decode(weaponItemFixture) as Map<String, dynamic>);
      });

      test('melee', () {
        MeleeWeaponModel.fromJson(
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

Item toBaseItem(Map<String, dynamic> item) {
  if (item.containsKey('productCategory')) {
    return _productCategoryItem(item);
  } else {
    return _categoryItem(item);
  }
}

Item _productCategoryItem(Map<String, dynamic> item) {
  final _gunReg = RegExp(r'(LongGuns)|(Pistols)|(SpaceGuns)|(SentinelWeapons)');
  final _meleeReg = RegExp(r'(Melee)|(SpaceMelee)');
  final _frameReg = RegExp(r'(Suits)|(SpaceSuits)|(MechSuits)');
  final _companion = RegExp(r'(Sentinels)|(KubrowPets)');

  final category = item['productCategory'] as String;

  if (category.contains(_gunReg)) {
    return ProjectileWeaponModel.fromJson(item);
  } else if (category.contains(_meleeReg)) {
    return MeleeWeaponModel.fromJson(item);
  } else if (category.contains(_frameReg)) {
    return WarframeModel.fromJson(item);
  } else if (category.contains(_companion)) {
    return CompanionModel.fromJson(item);
  } else {
    return BasicItemModel.fromJson(item);
  }
}

Item _categoryItem(Map<String, dynamic> item) {
  final _gunReg = RegExp(r'(Primary)|(Secondary)|(Arch-Gun)');
  final _meleeReg = RegExp(r'(Melee)|(Arch-Melee)');
  final _frameReg = RegExp(r'(Warframe)|(Archwing)');
  final _companion = RegExp(r'(Sentinel)|(Pet)');
  const _mods = 'Mods';

  final category = item['category'] as String;

  if (category.contains(_gunReg)) {
    return ProjectileWeaponModel.fromJson(item);
  } else if (category.contains(_meleeReg)) {
    return MeleeWeaponModel.fromJson(item);
  } else if (category.contains(_frameReg)) {
    return WarframeModel.fromJson(item);
  } else if (category.contains(_mods)) {
    return ModModel.fromJson(item);
  } else if (category.contains(_companion)) {
    return CompanionModel.fromJson(item);
  } else {
    return BasicItemModel.fromJson(item);
  }
}
