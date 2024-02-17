import 'package:flutter_test/flutter_test.dart';
import 'package:mayapp4/AddressInfo.dart';
import 'package:mayapp4/Ward.dart';
import 'package:mayapp4/disstrict.dart';
import 'package:mayapp4/province.dart';

void main() {
  group('Test addressInfor', () {
    test('Constructor', () {
      var addressInfor = AddressInfo(
          province:
              Province(id: '01', name: 'Ha noi', lever: 'thanh pho trung uong'),
          district: District(id: '001', name: 'bac tu liem', lever: 'quan'),
          ward: Ward(
              disstrictId: '01',
              name: 'cổ nhuế',
              lever: 'phuong',
              provinceId: '01'),
          street: 'pham van dong');
      expect(addressInfor.province, equals(addressInfor.province));
      expect(addressInfor.district, equals(addressInfor.district));
      expect(addressInfor.ward, equals(addressInfor.ward));
      expect(addressInfor.street, equals(addressInfor.street));
    });
  });
}
