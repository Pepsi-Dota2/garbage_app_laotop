enum Status { initial, loading, success, failure, error }

enum TabBarMenu { HOME, PROFILE }

enum BottomItem { home, profile }

enum VientianeDistrict {
  chanthabouly('ເມືອງຈັນທະບູລີ'),
  sikhottabong('ເມືອງສີໂຄດຕະບອງ'),
  sisattanak('ເມືອງສິສັດຕະນາກ'),
  xaysetha('ເມືອງໄຊເສດຖາ'),
  hadxayfong('ເມືອງຫາດຊາຍຟອງ'),
  sangthong('ເມືອງສັງທອງ'),
  pakngum('ເມືອງປາກງື່ມ'),
  xaythany('ເມືອງໄຊທານີ'),
  naxaythong('ເມືອງນາຊາຍທອງ');

  const VientianeDistrict(this.laoName);
  final String laoName;
}
