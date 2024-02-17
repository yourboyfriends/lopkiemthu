// ignore: file_names
import 'package:flutter_test/flutter_test.dart';
import 'package:mayapp4/disstrict.dart';

void main() {
  group(' District:', () {
    test('Test Constructor', () {
      var district = [
        District(
            id: "001", name: "Quan ba dinh", lever: "Quan", provinceId: "01"),
        District(
            id: "024",
            name: "Thanh pho ha giang ",
            lever: "Thanh pho",
            provinceId: "02"),
      ];
      expect(district[0].id, equals("001"));
      expect(district[0].lever, equals("Quan"));
      expect(district[0].name, equals("Quan ba dinh"));
      expect(district[0].provinceId, equals("01"));

      expect(district[1].id, equals("024"));
      expect(district[1].lever, equals("Thanh pho"));
      expect(district[1].name, equals("Thanh pho ha giang "));
      expect(district[1].provinceId, equals("02"));
    });
  });
}
