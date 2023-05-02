// ignore_for_file: lines_longer_than_80_chars

import '../domain/entities/photo_entity.dart';

final photosMock = [
  {
    'id': 5,
    'name': 'just a girl!!!',
    'dateCreate': '2022-07-26T17:14:02+08:00',
    'description':
        '«Не люблю спорт – вместо этого я трачу время на инвестиции в будущее, которое мечтаю разделить с тобой. Кстати, я имел в виду просмотр футбола, а тренажерный зал – это святое. Я буду демонстрировать тебе свою силу, чтобы защищать и оберегать хрупкую тебя».\n',
    'new': true,
    'popular': false,
    'image': {'id': 6, 'name': '62dfb05964570243318214.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 6,
    'name': 'yammy',
    'dateCreate': '2022-07-26T17:30:54+08:00',
    'description': 'Description',
    'new': true,
    'popular': false,
    'image': {'id': 7, 'name': '62dfb44d8a389979065999.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 7,
    'name': 'ъуъ',
    'dateCreate': '2022-07-26T17:35:45+08:00',
    'description': 'Description',
    'new': true,
    'popular': false,
    'image': {'id': 8, 'name': '62dfb5715ba78337856869.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 8,
    'name': 'раольпрддрпрл',
    'dateCreate': '2022-07-26T18:01:16+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 9, 'name': '62dfbb6b7a7dc681487550.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 11,
    'name': 'chuck chuck need cgnvf this fluff go off off backend',
    'dateCreate': '2022-07-26T19:57:27+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 13, 'name': '62dfd6a116368226148812.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 14,
    'name': 'focusing',
    'dateCreate': '2022-07-26T20:19:41+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 16, 'name': '62dfdbdca47e9229353675.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 16,
    'name': 'kjndvmsmdahbsua mlsmla',
    'dateCreate': '2022-07-27T15:07:52+08:00',
    'description': 'Sm;a',
    'new': true,
    'popular': false,
    'image': {'id': 20, 'name': '62e0e4482b410538310805.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 17,
    'name': 'Жраааааццц',
    'dateCreate': '2022-07-27T15:10:13+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 21, 'name': '62e0e4d4e65de318948333.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 24,
    'name': 'mom;;ml;',
    'dateCreate': '2022-07-27T19:25:21+08:00',
    'description': 'Blankness;m',
    'new': true,
    'popular': false,
    'image': {'id': 28, 'name': '62e120a06566f198569574.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 26,
    'name': 'сорян за спам зверополисом',
    'dateCreate': '2022-07-27T19:30:18+08:00',
    'description': 'Запарила искать картинки для тестов',
    'new': true,
    'popular': false,
    'image': {'id': 30, 'name': '62e121c9c3e92948228473.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 5,
    'name': 'just a girl!!!',
    'dateCreate': '2022-07-26T17:14:02+08:00',
    'description':
        '«Не люблю спорт – вместо этого я трачу время на инвестиции в будущее, которое мечтаю разделить с тобой. Кстати, я имел в виду просмотр футбола, а тренажерный зал – это святое. Я буду демонстрировать тебе свою силу, чтобы защищать и оберегать хрупкую тебя».\n',
    'new': true,
    'popular': false,
    'image': {'id': 6, 'name': '62dfb05964570243318214.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 6,
    'name': 'yammy',
    'dateCreate': '2022-07-26T17:30:54+08:00',
    'description': 'Description',
    'new': true,
    'popular': false,
    'image': {'id': 7, 'name': '62dfb44d8a389979065999.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 7,
    'name': 'ъуъ',
    'dateCreate': '2022-07-26T17:35:45+08:00',
    'description': 'Description',
    'new': true,
    'popular': false,
    'image': {'id': 8, 'name': '62dfb5715ba78337856869.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 8,
    'name': 'раольпрддрпрл',
    'dateCreate': '2022-07-26T18:01:16+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 9, 'name': '62dfbb6b7a7dc681487550.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 11,
    'name': 'chuck chuck need cgnvf this fluff go off off backend',
    'dateCreate': '2022-07-26T19:57:27+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 13, 'name': '62dfd6a116368226148812.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 14,
    'name': 'focusing',
    'dateCreate': '2022-07-26T20:19:41+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 16, 'name': '62dfdbdca47e9229353675.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 16,
    'name': 'kjndvmsmdahbsua mlsmla',
    'dateCreate': '2022-07-27T15:07:52+08:00',
    'description': 'Sm;a',
    'new': true,
    'popular': false,
    'image': {'id': 20, 'name': '62e0e4482b410538310805.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 17,
    'name': 'Жраааааццц',
    'dateCreate': '2022-07-27T15:10:13+08:00',
    'description': '',
    'new': true,
    'popular': false,
    'image': {'id': 21, 'name': '62e0e4d4e65de318948333.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 24,
    'name': 'mom;;ml;',
    'dateCreate': '2022-07-27T19:25:21+08:00',
    'description': 'Blankness;m',
    'new': true,
    'popular': false,
    'image': {'id': 28, 'name': '62e120a06566f198569574.jpeg'},
    'user': '/api/users/3'
  },
  {
    'id': 26,
    'name': 'сорян за спам зверополисом',
    'dateCreate': '2022-07-27T19:30:18+08:00',
    'description': 'Запарила искать картинки для тестов',
    'new': true,
    'popular': false,
    'image': {'id': 30, 'name': '62e121c9c3e92948228473.jpeg'},
    'user': '/api/users/3'
  }
].map(PhotoEntity.fromJson).toList();
