import 'package:mayapp4/province.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(' Province:', () {
    test('test constructor', () {
      var province = [
        Province(id: "01", name: "thanh pho ha noi", lever: "cap trung uong"),
        Province(id: "02", name: "tinh ha tinh", lever: "cap tinh"),
      ];
      expect(province[0].id, equals("01"));
      expect(province[0].lever, equals("cap trung uong"));
      expect(province[0].name, equals("thanh pho ha noi"));

      expect(province[1].id, equals("02"));
      expect(province[1].lever, equals("cap tinh"));
      expect(province[1].name, equals("tinh ha tinh"));
    });
  });
}
