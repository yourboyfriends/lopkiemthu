import 'package:flutter_test/flutter_test.dart';
import 'package:mayapp4/AddressInfo.dart';
import 'package:mayapp4/UserInfo.dart';
import 'package:mayapp4/Ward.dart';
import 'package:mayapp4/disstrict.dart';
import 'package:mayapp4/province.dart';

void main() {
  group('Test userInfor', () {
    test('Constructor', () {
      var userInfor = UserInfo(
          name: 'Hoang Quoc Trung',
          email: 'fwb@gmail.com',
          phoneNumber: '0987654321',
          birthDate: DateTime.now(),
          address: AddressInfo(
              province: Province(
                  id: '01', name: 'Ha noi', lever: 'thanh pho trung uong'),
              district: District(id: '001', name: 'bac tu liem', lever: 'quan'),
              ward: Ward(
                  disstrictId: '01',
                  name: 'cổ nhuế',
                  lever: 'phuong',
                  provinceId: '01'),
              street: 'pham van dong'));
      expect(userInfor.name, equals(userInfor.name));
      expect(userInfor.email, equals(userInfor.email));
      expect(userInfor.phoneNumber, equals(userInfor.phoneNumber));
      expect(userInfor.birthDate, equals(userInfor.birthDate));
      expect(userInfor.address, equals(userInfor.address));
    });
  });
}
