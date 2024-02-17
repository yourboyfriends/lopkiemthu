import 'package:mayapp4/Ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(' Ward:', () {
    test('test constructor', () {
      var ward = [
        Ward(
            id: "00001",
            name: "Phuong phuc xa ",
            lever: "Phuong",
            disstrictId: "001",
            provinceId: "01"),
        Ward(
            id: "00688",
            name: "Phuong quang trung ",
            lever: "Phuong",
            disstrictId: "024",
            provinceId: "02"),
      ];
      expect(ward[0].id, equals("00001"));
      expect(ward[0].lever, equals("Phuong"));
      expect(ward[0].name, equals("Phuong phuc xa "));
      expect(ward[0].disstrictId, equals("001"));
      expect(ward[0].provinceId, equals("01"));

      expect(ward[1].id, equals("00688"));
      expect(ward[1].lever, equals("Phuong"));
      expect(ward[1].name, equals("Phuong quang trung "));
      expect(ward[1].disstrictId, equals("024"));
      expect(ward[1].provinceId, equals("02"));
    });
  });
}
